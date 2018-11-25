import 'package:flutter/material.dart';
import './../../utils/uidata.dart';
import './../../model/menu.dart';

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
<<<<<<< HEAD
        title: "Login",
        menuColor: Colors.white,
        icon: Icons.person,
        image: UIData.profileImage,
        link: "Login",
      ),
      Menu(
        title: "Interest",
=======
        title: "Fil d'actualité",
        menuColor: Color(0xff7f5741),
        icon: Icons.timeline,
        image: UIData.timelineImage,
        link: "Timeline",
      ),
      Menu(
        title: "Intérêts",
>>>>>>> 10486660b58b205ed7f291368893033ae44c096d
        menuColor: Colors.white,
        icon: Icons.person,
        image: UIData.profileImage,
        link: "Tourist Reception",
      ),
      Menu(
<<<<<<< HEAD
        title: "Events",
=======
        title: "Evènements",
>>>>>>> 10486660b58b205ed7f291368893033ae44c096d
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
<<<<<<< HEAD
        title: "Signal",
        menuColor: Colors.white,
        icon: Icons.add,
        image: UIData.verifyImage,
        link: "Signal",
      ),
      Menu(
        title: "News Feed",
        menuColor: Color(0xff7f5741),
        icon: Icons.timeline,
        image: UIData.timelineImage,
        link: "Timeline",
      ),
=======
          title: "Signal",
          menuColor: Colors.white,
          icon: Icons.add,
          image: UIData.verifyImage,
          link: "Signal",),
      Menu(
          title: "News Feed",
          menuColor: Color(0xff7f5741),
          icon: Icons.timeline,
          image: UIData.timelineImage,
          link: "Timeline",),
>>>>>>> 10486660b58b205ed7f291368893033ae44c096d
      Menu(
        title: "Recyclage",
        menuColor: Color(0xff7f5741),
        icon: Icons.timeline,
        image: UIData.timelineImage,
        link: "Recycling",
      ),
    ];
  }
}
