import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          //upper title in home page
          'Example Home Page',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 14, 215, 95),
        centerTitle: true,

        leading: GestureDetector(
          onTap: () {},
          child: Container(
            //container that contains an arrow
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 81, 241, 142), //box color
                borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              'assets/icons/Arrow_back.svg',
              alignment: Alignment.center,

              color: const Color.fromARGB(255, 4, 48, 27),
              height: 30, //must define the width and height!!!!
              width: 30,
            ),
          ),
        ),

        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              //container that contains an arrow
              margin: const EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 81, 241, 142), //box color
                  borderRadius: BorderRadius.circular(10)),
              child: SvgPicture.asset(
                'assets/icons/hamburger_menu.svg',
                alignment: Alignment.center,
                color: const Color.fromARGB(255, 4, 48, 27),
                width: 30,
              ),
            ),
          ),
        ],
        elevation:
            3.0, //shadow for appp (how high does it look from the screen)
      ),
    );
  }
}
