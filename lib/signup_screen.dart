// ignore: file_names
import 'package:flutter/material.dart';
import 'package:fyp_1/login_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final _formkey = GlobalKey<FormState>();
  final RegExp passwordRegex = RegExp(
      r'^(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{8,}$');
  final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Kidney Scan",
              style: GoogleFonts.pacifico(
                fontSize: 35,
                color: Colors.white,
              ),
            ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 55, 181, 219),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff98DCEB),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: SizedBox(
            height: double.infinity,
            child: SingleChildScrollView(
              child: Form(
                key: _formkey,

                ///form key is here
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Register Account',
                        style: GoogleFonts.prompt(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        validator: (value){
                          if(value!.isEmpty){
                            return "Please enter name";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          contentPadding: const EdgeInsets.all(15),
                          hintText: "Full Name",
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty && value.length < 11) {
                            return "please enter a valid Number";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: "Number",
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: const EdgeInsets.all(15),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        
                        validator: (value) {
                          if (value!.isEmpty && !emailRegex.hasMatch(value)) {
                            return "please enter a valid email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                            hintText: "Email",
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: const EdgeInsets.all(15),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty &&
                              !passwordRegex.hasMatch(value)) {
                            return "please enter a valid password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          hintText: "Password",
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: const EdgeInsets.all(15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty &&
                              !passwordRegex.hasMatch(value)) {
                            return "Password dose not match";
                          }
                            return null;
                        },
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                            hintText: "Confirm password",
                            fillColor: Colors.white,
                            filled: true,
                            contentPadding: const EdgeInsets.all(15),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40))),
                        obscureText: true,
                      ),
                    ),
                    const SizedBox(height: 25),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color(0xff12BDE2),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(seconds: 1),
                              content: Text("account creater successfully"),
                            ),
                          );
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.rambla(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            "Already have an account?",
                            style: GoogleFonts.rambla(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                          child: Text(
                            "Sign in",
                            style: GoogleFonts.rambla(
                              fontSize: 20,
                              color: const Color.fromARGB(255, 8, 137, 177),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
