import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = []; //list of categorymodel

    categories.add(
      CategoryModel(
        name: "Salad",
        iconPath: "assets/icons/plate.svg",
        boxColor: Colors.green,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Blueberry Pancake",
        iconPath: "assets/icons/blueberry-pancake.svg",
        boxColor: Colors.lightBlue,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Canai Bread",
        iconPath: "assets/icons/canai-bread.svg",
        boxColor: Colors.brown.shade300,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Honey Pancakes",
        iconPath: "assets/icons/honey-pancakes.svg",
        boxColor: Colors.amber.shade100,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Pancakes",
        iconPath: "assets/icons/pancakes.svg",
        boxColor: Colors.orange.shade500,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Pie",
        iconPath: "assets/icons/pie.svg",
        boxColor: Colors.pink.shade200,
      ),
    );

    categories.add(
      CategoryModel(
        name: "Salmon Nigiri",
        iconPath: "assets/icons/salmon-nigiri.svg",
        boxColor: Colors.red.shade400,
      ),
    );

    return categories;
  }
}
