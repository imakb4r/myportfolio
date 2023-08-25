import 'package:flutter/material.dart';
import 'package:myportfolio/utils/colors.dart';
import 'package:myportfolio/utils/constant.dart';
import 'package:myportfolio/utils/style.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final Uri _resumeUrl = Uri.parse(
      'https://d383au3bye3rv1.cloudfront.net/media/public/users/d85c789c-b336-46ea-9a52-b315ff6b8021/resume/ca3d7591-6fef-410c-9a3c-256bfe25151e.pdf');

  Future<void> resumeUrl() async {
    if (!await launchUrl(_resumeUrl)) {
      throw Exception('Could not launch $_resumeUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavBar(),
      desktop: desktopNavBar(),
    );
  }

  //==========Mobile Navbar============
  Widget mobileNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ),
    );
  }

  //==========Desktop Navbar============
  Widget desktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Home'),
              navButton('About'),
              navButton('Service'),
              navButton('Projects'),
              navButton('Contact'),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: () {
                resumeUrl();
              },
              child: Text(
                "Download Resume",
                style: TextStyle(
                  color: AppColors.primary,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {
          resumeUrl();
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 100,
      height: 200,
      decoration:
          const BoxDecoration(image: DecorationImage(image: AssetImage(logo))),
    );
  }
}
