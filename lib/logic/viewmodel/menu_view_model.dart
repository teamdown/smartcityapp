import 'package:flutter/material.dart';
import './../../utils/uidata.dart';
import './../../model/menu.dart';

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
          title: "Connexion",
          menuColor: Color(0xff050505),
          icon: Icons.person,
          image: UIData.profileImage,
          items: ["Connexion", "S'enregistrer"]),
       Menu(
          title: "Card",
          menuColor: Color(0xff050505),
          icon: Icons.add,
          image: UIData.pkImage,
          items: ["CardConnexion", "S'enregistrer0"]),
           Menu(
          title: "Dashboard",
          menuColor: Color(0xff050505),
          icon: Icons.add,
          image: UIData.profileImage,
          items: ["Dashboard"]),
               Menu(
          title: "CallendrierCollecte",
          menuColor: Color(0xff050505),
          icon: Icons.add,
          image: UIData.pkImage,
          items: ["CardConnexion", "S'enregistrer0"]),
    ];

  }
}
