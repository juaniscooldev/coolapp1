//reference video: https://www.youtube.com/watch?v=D4nhaszNW4o

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        searchField(),
        const SizedBox(
          height: 40,
        ), //add some space from text field
        const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Category",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        Container(
          height: 150,
          color: Colors.green,
          child: ListView.builder(
            //this will list all the items in the list
            itemBuilder: (context, index) {
              return Container();
            },
          ),
        )
      ]),
    );
  }

  Container searchField() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xff1D1617).withOpacity(0.11), //shadow of
          blurRadius: 40,
          spreadRadius: 0.0,
        )
      ]),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white, //inside color of text box
            contentPadding: const EdgeInsets.all(15),
            hintText: "Type over here, ya dingus",
            hintStyle: const TextStyle(
              fontSize: 14,
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.only(right: 1), // add padding to adjust icon
              child: Icon(Icons.search_outlined),
            ),
            suffixIcon: Container(
              width: 100, //must define width of container
              child: const IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    VerticalDivider(
                      //vertical line next to filter suffix icon
                      color: Colors.black,
                      indent: 10, //create space from top
                      endIndent: 10, //create space from bottom

                      thickness: 0.1,
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(Icons.tune_rounded),
                    ),
                  ],
                ),
              ),
            ),
            border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(15), //make text border rounded
                borderSide: BorderSide.none)), //removes side border
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
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
              color: const Color.fromARGB(255, 68, 227, 129), //box color
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
      elevation: 3.0, //shadow for appp (how high does it look from the screen)
    );
  }
}
