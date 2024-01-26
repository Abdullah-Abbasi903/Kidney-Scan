import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 20.w,
      automaticallyImplyLeading: false,
      toolbarHeight: 70,
      
      leading: Builder(
        builder: (context) => IconButton(
          
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Image.asset("assets/images/side_menu.png",width: 10.w,),
        ),
      ),
      title: Text(
        "Kidney Scan",
        style: GoogleFonts.pacifico(
          fontSize: 35,
          
          color: Colors.white,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(90);
}
