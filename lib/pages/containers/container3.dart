import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/utils/aboutmeutils.dart';
import 'package:myportfolio/utils/colors.dart';
import 'package:myportfolio/utils/constant.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container3 extends StatefulWidget {
  const Container3({super.key});

  @override
  State<Container3> createState() => _Container3State();
}

class _Container3State extends State<Container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer2(),
      desktop: desktopContainer2(),
    );
  }

  Widget mobileContainer2() {
    return Container(
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(illustration1),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "About me",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w! / 20,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              height: 1,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hey there! my name \nis Akbar",
                style: TextStyle(
                  //color: Colors.grey[400],
                  fontSize: w! / 10,
                  height: 1,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "“If you are not going to tell the world who you are, the world is not \ngoing to tell you, how good you are.”",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              AboutmeUtils.aboutme,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
              icon: const FaIcon(
                FontAwesomeIcons.download,
                size: 18,
              ),
              label: const Text("Download Resume"),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget desktopContainer2() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange[300],
      ),
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 50),
      child: Padding(
        padding: const EdgeInsets.only(left: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tech Stack",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        height: 1,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Hey there! my name \nis Akbar",
                      style: TextStyle(
                        fontSize: w! / 30,
                        //fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      children: [
                        Text(
                          "“If you are not going to tell the world who you are, the world is not \ngoing to tell you, how good you are.”",
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      AboutmeUtils.aboutme,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 45,
                          child: ElevatedButton.icon(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    AppColors.primary)),
                            icon: const FaIcon(
                              FontAwesomeIcons.download,
                              size: 18,
                            ),
                            label: const Text("Download Resume"),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Lottie.asset(lottieFile),
            ),
          ],
        ),
      ),
    );
  }
}
