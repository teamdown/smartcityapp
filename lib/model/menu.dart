import 'package:flutter/material.dart';

class Menu {
  String title;
  IconData icon;
  String image;
  BuildContext context;
  Color menuColor;
  String link;

  Menu(
      {this.title,
      this.icon,
      this.image,
      this.context,
      this.menuColor = Colors.black,
      this.link
      });
}
