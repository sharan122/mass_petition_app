import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mass_petition_app/homepage/home_screen.dart';
//import 'package:mass_petition_app/homepage/home_screen.dart';
import 'package:mass_petition_app/homepage/notifications.dart';
import 'package:mass_petition_app/homepage/post.dart';
import 'package:mass_petition_app/homepage/profile.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _index = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    const Post(),
    const Notifications(),
    const Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logo'),
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(
            fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
        elevation: 1,
        automaticallyImplyLeading: false,
      ),
      extendBody: true,
      body: _screens[_index],
      bottomNavigationBar: FloatingNavbar(
          iconSize: 33.0,
          fontSize: 13.0,
          items: [
            FloatingNavbarItem(
              icon: Icons.home_filled,
              title: "Home",
            ),
            FloatingNavbarItem(
              icon: Icons.add_circle_outline_sharp,
              title: "Post",
            ),
            FloatingNavbarItem(
                icon: Icons.notification_add_sharp, title: "Notifications"),
            FloatingNavbarItem(icon: Icons.account_circle, title: "Profile"),
          ],
          currentIndex: _index,
          onTap: (i) {
            setState(() {
              _index = i;
            });
          }),
    );
  }
}
