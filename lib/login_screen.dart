// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyp_1/nav_bar.dart';
import 'package:fyp_1/signup_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formkey = GlobalKey<FormState>();
  final RegExp passwordRegex = RegExp(
      r'^(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{8,}$');
  final RegExp emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  final TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: PreferredSize(
        preferredSize:  const Size.fromHeight(90),
        child:  AppBar(
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
          backgroundColor:  const Color.fromARGB(255, 55, 181, 219),
          shape:  const RoundedRectangleBorder(
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
            //box decoration k andar shape widget ni chlta
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome Back',
                      style: GoogleFonts.prompt(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SvgPicture.asset(
                      "assets/svgs/Login_svg.svg",
                      width: 120,
                      height: 120,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: TextFormField(
                         controller: email,
                        validator: (value) {
                          if (value!.isEmpty || !emailRegex.hasMatch(value)) {
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
                          contentPadding: const EdgeInsets.all(15),
                          hintText: "Email",
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
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextFormField(
                        obscureText: true,
                        validator: (value) {
                          if (value!.length < 8 ||!passwordRegex.hasMatch(value)) {
                            return "Password dosen't match the format";
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
                          hintText: "password",
                          fillColor: Colors.white,
                          filled: true,
                          
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot password ?',
                              style: GoogleFonts.rambla(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 2, 35, 56),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 7),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff12BDE2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 50)),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(seconds: 1),
                              content: Text("Login Successful"),
                            ),
                          );

                          // Move Navigator to this position
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => NavBar(
                                userEmail: email.text.toString(),
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Sign in",
                        style: GoogleFonts.rambla(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Row(
                        children: [
                          Text(
                            "dont have an account ?",
                            style: GoogleFonts.rambla(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>  SignupScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Sign up',
                              style: GoogleFonts.rambla(
                                  fontSize: 20,
                                  color: const Color.fromARGB(255, 8, 137, 177),
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
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
