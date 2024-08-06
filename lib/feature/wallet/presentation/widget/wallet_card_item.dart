import 'package:flutter/material.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class WalletCardItem extends StatelessWidget {
  const WalletCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(10),
        width: SizeConfig.screenW! * .73,
        height: SizeConfig.screenH! * .23,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              image: AssetImage(
                "assets/wallet_card.png",
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total Balance",
                      style: AppTextStyle.normalText(SizeConfig.screenW),
                    ),
                    Text("\$562,245.55",
                        style: AppTextStyle.headerText2(SizeConfig.screenW)),
                  ],
                ),
                Container(
                    width: 30,
                    height: 30,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/visa.jpg",
                      fit: BoxFit.cover,
                    ))
              ],
            ),
            Expanded(child: Container()),
            Text("1234      ....       ....      3659",
                style: AppTextStyle.normalText(SizeConfig.screenW)),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name",
                    style: AppTextStyle.normalGrey(SizeConfig.screenW)),
                Text("Exp", style: AppTextStyle.normalGrey(SizeConfig.screenW))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Client Name",
                    style: AppTextStyle.headerText1Wight(SizeConfig.screenW)),
                Text("09/23",
                    style: AppTextStyle.headerText1Wight(SizeConfig.screenW))
              ],
            )
          ],
        ),
      ),
    );
  }
}
