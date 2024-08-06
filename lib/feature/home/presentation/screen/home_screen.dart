import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/view_model/home_controller.dart';
import 'package:getpayin_task/feature/home/presentation/widget/Transaction.dart';
import 'package:getpayin_task/feature/home/presentation/widget/earnings.dart';
import 'package:getpayin_task/feature/home/presentation/widget/header.dart';
import 'package:getpayin_task/feature/home/presentation/widget/home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.homeController});
  final HomeViewModel homeController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Header(homeViewModel: homeController),
        HomeCard(homeViewModel: homeController),
        Earnings(homeViewModel: homeController),
        Transaction(ViewModel: homeController,isWallet: homeController.isWallet,),
      ],
    ));
  }
}
