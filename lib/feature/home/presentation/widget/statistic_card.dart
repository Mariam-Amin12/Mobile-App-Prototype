import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/view_model/home_controller.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class StatisticCard extends StatelessWidget {
  const StatisticCard({
    super.key,
    required this.homeViewModel,
  });
  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: SizeConfig.screenW!,
      height: SizeConfig.screenH! * .12,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/card_home2.png"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.green,
                  size: 40,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homeViewModel.income,
                    style: AppTextStyle.normalTextWight(SizeConfig.screenW),
                  ),
                  Text(
                    "\$20,000",
                    style: AppTextStyle.headerText1Wight(SizeConfig.screenW),
                  ),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.grey,
            width: 2,
            height: SizeConfig.screenH! > 880
                ? SizeConfig.screenH! * .4
                : SizeConfig.screenH! * .11,
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.arrow_upward_outlined,
                  color: Colors.red,
                  size: 40,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    homeViewModel.outcome,
                    style: AppTextStyle.normalTextWight(SizeConfig.screenW),
                  ),
                  Text(
                    "\$17,000",
                    style: AppTextStyle.headerText1Wight(SizeConfig.screenW),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
