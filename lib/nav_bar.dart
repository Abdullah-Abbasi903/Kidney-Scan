import 'package:flutter/material.dart';
import 'package:fyp_1/blog_screen.dart';
import 'package:fyp_1/firstpage.dart';
import 'package:fyp_1/report_screen.dart';
import 'package:fyp_1/side_menu.dart';
import 'package:fyp_1/topbar.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavBar extends StatefulWidget {
   const NavBar({required this.userEmail,super.key});
   final String userEmail;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  final items = [
   const Icon(Icons.home, size: 30),
    const Icon(Icons.file_download, size: 30),
    const Icon(Icons.search, size: 30),
  ];

   final bodyWidgets = [
    const FirstPage(),
    const ReportScreen(),
    const BlogScreen(),
  ];

  
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar:  const TopBar(),
      body:IndexedStack(index: _selectedIndex,
      children: bodyWidgets,
      ),
    
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: _selectedIndex,
        backgroundColor: Colors.transparent,
        color: const Color(0xff53C5DE),
        height: 70,
        buttonBackgroundColor: const Color(0xff98DCEB),
        onTap: (index) {
          setState(
            () {
              _selectedIndex = index;
            },
          );
        },
      ),

     
      drawer: SideMenu(email: widget.userEmail),
      
    );
  }
}
