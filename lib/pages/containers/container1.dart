import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/utils/colors.dart';
import 'package:myportfolio/utils/constant.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer1(),
      desktop: desktopContainer1(),
    );
  }

  Widget mobileContainer1() {
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
            "Muhammed Akbar \nAnsari",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "> ",
                style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 20,
                ),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Flutter Developer',
                    textStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20,
                    ),
                  ),
                  TyperAnimatedText(
                    'Lead Generation Expert',
                    textStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20,
                    ),
                  ),
                  TyperAnimatedText(
                    'UI/UX Enthusiast',
                    textStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(iclinkedin),
                highlightColor: Colors.orange[200],
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(icGithub),
                highlightColor: Colors.orange[200],
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(ictwitter),
                highlightColor: Colors.orange[200],
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(icInstagram),
                highlightColor: Colors.orange[200],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
              icon: const FaIcon(FontAwesomeIcons.code),
              label: const Text("Flutter Developer and Lead Generation Expert"),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }

  Widget desktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Muhammed Akbar \nAnsari",
                    style: TextStyle(
                        fontSize: w! / 25,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  ),
                  Row(
                    children: [
                      Text(
                        "> ",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 20,
                        ),
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TyperAnimatedText(
                            'Flutter Developer',
                            textStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 20,
                            ),
                          ),
                          TyperAnimatedText(
                            'Lead Generation Expert',
                            textStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 20,
                            ),
                          ),
                          TyperAnimatedText(
                            'UI/UX Enthusiast',
                            textStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(iclinkedin),
                        hoverColor: Colors.orange[200],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(icGithub),
                        hoverColor: Colors.orange[200],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(ictwitter),
                        hoverColor: Colors.orange[200],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(icInstagram),
                        hoverColor: Colors.orange[200],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 45,
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(AppColors.primary)),
                          icon: const FaIcon(FontAwesomeIcons.code),
                          label: const Text(
                              "Flutter Developer and Lead Generation Expert"),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(illustration1),
              )),
            ),
          )
        ],
      ),
    );
  }
}
