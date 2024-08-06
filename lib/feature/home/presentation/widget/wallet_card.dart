import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/view_model/home_controller.dart';
import 'package:getpayin_task/feature/home/presentation/widget/mywallet_button.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({
    super.key,
    required this.homeViewModel,
  });
  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      width: SizeConfig.screenW!,
      height: SizeConfig.screenH! * .26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), 
        image: const DecorationImage(
          image: AssetImage("assets/card_home1.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            homeViewModel.totalBalance,
            style: AppTextStyle.homeCard1(
              SizeConfig.screenW,
            ),
          ),
          Text("\$25,0000.40 ",
              style: AppTextStyle.homeCardSalary(
                SizeConfig.screenW,
              )),
          Expanded(
            child: Container(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  homeViewModel.myWallet,
                  style: AppTextStyle.mywalletText(
                    SizeConfig.screenW,
                  ),
                ),
              ),
              const MywalletButton(),
            ],
          ),
        ],
      ),
    );
  }
}
