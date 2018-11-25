import 'package:flutter/material.dart';
import './../../utils/uidata.dart';
import './../../model/menu.dart';

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
          title: "Login",
          menuColor: Colors.white,
          icon: Icons.person,
          image: UIData.profileImage,
          link: "Login",),

      Menu(
          title: "Annuaire",
          menuColor: Colors.white,
          icon: Icons.nature_people,
          image: UIData.shoppingImage,
          link: "Annuaire",),
      Menu(
          title: "Agenda",
          menuColor: Colors.white,
          icon: Icons.add,
          image: UIData.timelineImage,
          link: "Agenda",)
    ];
  }
}
