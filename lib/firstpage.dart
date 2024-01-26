import 'package:flutter/material.dart';
import 'package:fyp_1/controllers/page_controller.dart';
import 'package:fyp_1/report_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (BuildContext context, viewModel, Widget? child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 50, left: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Card(
                    elevation: 12,
                    child: Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xff319FC1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7, left: 5),
                            child: Text(
                              "NOTE:",
                              style: GoogleFonts.prompt(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 7),
                              child: Text(
                                  " Our app serves as a valuable\nresource, but for optimal accuracy,we\nrecommend consulting a qualified healthcare professional."),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Card(
                  elevation: 12,
                  child: Container(
                    width: 250,
                    height: 60,
                    decoration: BoxDecoration(
                        color: const Color(0xff319FC1),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 30),
                            child: Text(
                              "Daily Tip:",
                              style: GoogleFonts.prompt(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 7, left: 7),
                              child: Text("Drink water daily"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Upload your image",
                  style: GoogleFonts.rambla(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff50B9DA)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: viewModel.image != null &&
                                viewModel.image.toString() != "" &&
                                viewModel.image!.path.toString() != ""
                            ? const Color(0xff50B9DA)
                            : const Color(0xffE6E6E6),
                        foregroundColor: Colors.black,
                      ),
                      onPressed: () => viewModel.getImage(),
                      child: Text(
                        "Upload image",
                        style: GoogleFonts.prompt(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: Text(
                        viewModel.image != null &&
                                viewModel.image!.path.toString() != ""
                            ? viewModel.image!.path
                                .split('/')
                                .last
                                .substring(0, 20)
                            : 'No file choosen',
                        style: GoogleFonts.prompt(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: viewModel.image != null &&
                                viewModel.image!.path.toString() != ""
                            ? const Color(0xff50B9DA)
                            : const Color(0xffE6E6E6),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                    onPressed: () {
                      viewModel.image != null &&
                              viewModel.image.toString() != "" &&
                              viewModel.image!.path.toString() != "" &&
                              viewModel.image!.path
                                  .split("/")
                                  .last
                                  .contains("jpg")
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ReportScreen(),
                              ),
                            )
                          : ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(seconds: 1),
                                content: Text('The image is not in JPG format'),
                              ),
                            );
                    },
                    child: Text(
                      'Generate',
                      style: GoogleFonts.prompt(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
