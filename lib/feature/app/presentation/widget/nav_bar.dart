import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/app/controller/app_controller.dart';
import 'package:provider/provider.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, appController, child) {
        return BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          elevation: 0,
          currentIndex: appController.selectedNavItem,
          onTap: appController.onNavEvent,
          items: appController.navItem
              .map((e) => BottomNavigationBarItem(
                    label: "",
                    icon: appController.selectedNavItem == appController.navItem.indexOf(e)
                        ? e.selected
                        : e.unselected,
                  ))
              .toList(),
        );
      },
    );
  }
}