import 'package:flutter/material.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class Scroller extends StatelessWidget {
  const Scroller({
    super.key,
    required this.title,required this.isWallet,
  });
  final String title;
  final isWallet;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyle.headerText3(SizeConfig.screenW),
        ),
        Expanded(child: Container()),
        InkWell(
            onTap: () {},
            child: isWallet==false? Text(
              "See All",
              style: AppTextStyle.seeAll(
                SizeConfig.screenW,
              )
            ):const Icon(Icons.settings)
            )
      ],
    );
  }
}
