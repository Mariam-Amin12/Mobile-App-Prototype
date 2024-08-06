import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/screen/home_screen.dart';
import 'package:getpayin_task/feature/profile/presentaion/screen/profile_screen.dart';
import 'package:getpayin_task/feature/state/state_screen.dart';
import 'package:getpayin_task/feature/wallet/presentation/screen/wallet_screen.dart';
import 'package:getpayin_task/feature/app/data/model/nav_item_model.dart';
import 'package:getpayin_task/core/serveces/serverces_locator.dart';

class AppController extends ChangeNotifier {

  List<NavItemModel> navItem = [
    NavItemModel(
        selected: const Icon(
          Icons.home_filled,

        ),
        unselected: const Icon(Icons.home_outlined, )),
    NavItemModel(
        selected: const Icon(Icons.account_balance_wallet, ),
        unselected: const Icon(Icons.account_balance_wallet_outlined,
            )),
    NavItemModel(
        selected: const Icon(Icons.insert_chart,),
        unselected:
            const Icon(Icons.insert_chart_outlined, )),
    NavItemModel(
        selected: const Icon(Icons.person, ),
        unselected:
            const Icon(Icons.person_outline_sharp, )),
  ];
  int selectedNavItem = 0;

  onNavEvent(value) {
    selectedNavItem = value;
    notifyListeners();
  }

  List<Widget> screens = [HomeScreen(homeController:sl()),WalletScreen(walletViewModel: sl(),),StateScreen(),ProfileScreen(profileViewModel:  sl()),
  ];
}
