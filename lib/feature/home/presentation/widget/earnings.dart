import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/view_model/home_controller.dart';
import 'package:getpayin_task/feature/home/presentation/widget/earning_cards.dart';
import 'package:getpayin_task/feature/home/presentation/widget/scroller.dart';

class Earnings extends StatelessWidget {
  const Earnings({super.key, required this.homeViewModel});
  final HomeViewModel homeViewModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Scroller(title: homeViewModel.earning,isWallet: homeViewModel.isWallet,),
            EarningCards(
              homeViewModel: homeViewModel,
            ),
          ],
        ),
      ),
    );
  }
}
