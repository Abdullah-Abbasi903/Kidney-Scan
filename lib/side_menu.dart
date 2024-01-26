import 'package:flutter/material.dart';
import 'package:fyp_1/update_profile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({required this.email, super.key});
  final String email;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      backgroundColor: const Color(0xff98DCEB),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: UserAccountsDrawerHeader(
              decoration: const BoxDecoration(color: Color(0xff98DCEB)),
              accountName: const Text(
                "bari filam",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              accountEmail: Text(
                email,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset("assets/images/monkey.PNG",
                      width: 90, height: 90, fit: BoxFit.cover),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("profile"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UpdateProfile(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.dark_mode),
            title: const Text("Dark Mode"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.school),
            title: const Text("profile"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("profile"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("profile"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("profile"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("profile"),
            onTap: () => null,
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text("profile"),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}
