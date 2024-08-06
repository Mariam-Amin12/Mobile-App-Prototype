import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/data/model/earning_model.dart';
import 'package:getpayin_task/feature/home/presentation/view_model/home_controller.dart';
import 'package:getpayin_task/feature/home/presentation/widget/circular_litter.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class EarningCardItem extends StatelessWidget {
  EarningCardItem({
    super.key,
    required this.earningModel,
    required this.index,
    required this.homeViewModel,
  });
  final HomeViewModel homeViewModel;

  final int index;
  final EarningModel earningModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 20),
      child: Container(
        width: 135,
        height: 160,
        decoration: BoxDecoration(
          color: homeViewModel.color[index], // Light red color
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            CircularLetter(
              letter: earningModel.name[0].toUpperCase(),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    earningModel.name,
                    style: AppTextStyle.normalTextWight(SizeConfig.screenW),
                  ),
                  Text(
                    "\$ ${earningModel.price}",
                    style: AppTextStyle.headerText1Wight(SizeConfig.screenW),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
