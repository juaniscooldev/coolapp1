//reference video: https://www.youtube.com/watch?v=D4nhaszNW4o

import "package:coolapp1/models/category_models/category_models.dart";
import "package:coolapp1/models/category_models/diet_models.dart";

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<CategoryModel> categories = [];

  void getCategories() {
    categories = CategoryModel.getCategories();
  }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   return getCategories();
  // }

  @override
  Widget build(BuildContext context) {
    getCategories(); //fills list first

    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        searchField(),
        const SizedBox(
          height: 40,
        ), //add some space from text field
        categories_Title(),
        SizedBox(
          height: 25,
        ),
        categories_Section()
      ]),
    );
  }

  Column categories_Title() {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Category",
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Container categories_Section() {
    return Container(
      height: 100, //height of list
      color: Colors.white,
      child: ListView.separated(
        //this will list all the items in the list

        scrollDirection: Axis.horizontal, //list will scroll from left to right
        separatorBuilder: (context, index) => const SizedBox(
          width: 25,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            //height: 50,
            width: 100,
            decoration: BoxDecoration(
              color: categories[index].boxColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(categories[index].iconPath),
                  ),
                ),
                Text(
                  categories[index].name,
                  style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
          );
        },
        padding: const EdgeInsets.only(
          right: 10,
          left: 10,
        ),
      ),
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
