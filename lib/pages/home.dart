import 'package:flutter/material.dart';
import 'package:myportfolio/pages/containers/container1.dart';
import 'package:myportfolio/pages/containers/container2.dart';
import 'package:myportfolio/pages/containers/container3.dart';
import 'package:myportfolio/utils/constant.dart';
import 'package:myportfolio/widgets/navbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
        child: Container(
          child: const Column(
            children: [
              NavBar(),
              Container1(),
              SizedBox(
                height: 30,
              ),
              Container2(),
              Container3(),
            ],
          ),
        ),
      )),
    );
  }
}
