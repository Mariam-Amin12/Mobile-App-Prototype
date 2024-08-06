import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/view_model/home_controller.dart';
import 'package:getpayin_task/feature/home/presentation/widget/statistic_card.dart';
import 'package:getpayin_task/feature/home/presentation/widget/wallet_card.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key, required this.homeViewModel});
  final HomeViewModel homeViewModel;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          WalletCard(homeViewModel: homeViewModel),
          StatisticCard(homeViewModel: homeViewModel)
        ],
      ),
    );
  }
}
