import 'package:flutter/material.dart';
import './../../utils/uidata.dart';
import './../../model/menu.dart';

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
        title: "Fil d'actualité",
        menuColor: Color(0xff7f5741),
        icon: Icons.timeline,
        image: UIData.timelineImage,
        link: "Timeline",
      ),
      Menu(
        title: "Intérêts",
        menuColor: Colors.white,
        icon: Icons.person,
        image: UIData.profileImage,
        link: "Tourist Reception",
      ),
      Menu(
        title: "Evènements",
        menuColor: Colors.white,
        icon: Icons.person,
        image: UIData.profileImage,
        link: "Events",
      ),
      Menu(
        title: "Annuaire",
        menuColor: Colors.white,
        icon: Icons.nature_people,
        image: UIData.shoppingImage,
        link: "Annuaire",
      ),
      Menu(
        title: "Agenda",
        menuColor: Colors.white,
        icon: Icons.add,
        image: UIData.timelineImage,
        link: "Agenda",
      ),
      Menu(
        title: "Recyclage",
        menuColor: Color(0xff7f5741),
        icon: Icons.cached,
        image: UIData.timelineImage,
        link: "Agenda",
      ),
    ];
  }
}
