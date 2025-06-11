import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/constants/colors.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //Main
          //HeaderDesktop(),
         

          //Part1
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.teal,
          )
        ],
      )
    );
  }
}