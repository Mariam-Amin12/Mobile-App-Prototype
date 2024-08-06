import 'dart:math';
import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/view_model/home_controller.dart';
import 'package:getpayin_task/feature/home/presentation/widget/earning_card_item.dart';

class EarningCards extends StatelessWidget {
  const EarningCards({super.key, required this.homeViewModel});
  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: homeViewModel.earningModel.map((e) {
          int randomNumber = Random().nextInt(5);

          return EarningCardItem(
              homeViewModel: homeViewModel,
              earningModel: e,
              index: randomNumber);
        }).toList(),
      ),
    );
  }
}
