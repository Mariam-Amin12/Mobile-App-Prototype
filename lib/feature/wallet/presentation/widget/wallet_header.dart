import 'package:flutter/material.dart';
import 'package:getpayin_task/core/common/widget/circular_image.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const CircularImage(),
          Container(
            padding: const EdgeInsets.only(left: 10),

          ),
          Expanded(child: Container()),
          Text("Wallet",style:AppTextStyle.headerText2(SizeConfig.screenW)),
          Expanded(child: Container()),
          IconButton(
              icon: const Icon(Icons.more_vert_sharp),
              onPressed: () {}),
        ],
      ),
    );
  }
}
