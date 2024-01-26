import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fyp_1/login_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 1),
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) =>  LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body:Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.blue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/svgs/Start_Svg.svg'),
            const SizedBox(
              height: 20,
            ),
             Text(
              'Kidney Scan',
              style: GoogleFonts.pacifico(
                fontSize: 35,
                color: Colors.white,
                fontWeight: FontWeight.normal
              ),
            )
          ],
        ),
      ), 
    );
  }
}
