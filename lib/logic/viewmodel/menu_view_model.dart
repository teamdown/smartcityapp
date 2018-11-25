import 'package:flutter/material.dart';
import './../../utils/uidata.dart';
import './../../model/menu.dart';

class MenuViewModel {
  List<Menu> menuItems;

  MenuViewModel({this.menuItems});

  getMenuItems() {
    return menuItems = <Menu>[
      Menu(
        title: "Interest",
        menuColor: Colors.white,
        icon: Icons.games,
        image: UIData.interest,
        link: "Tourist Reception",
      ),
      Menu(
        title: "Events",
        menuColor: Colors.white,
        icon: Icons.event,
        image: UIData.events,
        link: "Events",
      ),
      Menu(
        title: "Annuaire",
        menuColor: Colors.white,
        icon: Icons.list,
        image: UIData.diary,
        link: "Annuaire",
      ),
      Menu(
        title: "Agenda",
        menuColor: Colors.white,
        icon: Icons.featured_play_list,
        image: UIData.notebook,
        link: "Agenda",
      ),
      Menu(
        title: "Signal",
        menuColor: Colors.white,
        icon: Icons.new_releases,
        image: UIData.signal,
        link: "Signal",
      ),
      Menu(
        title: "Actualités",
        menuColor: Color(0xff7f5741),
        icon: Icons.view_list,
        image: UIData.news,
        link: "Timeline",
      ),
      Menu(
        title: "Recyclage",
        menuColor: Color(0xff7f5741),
        icon: Icons.cached,
        image: UIData.recycling,
        link: "Recycling",
      ),
    ];
  }
}
