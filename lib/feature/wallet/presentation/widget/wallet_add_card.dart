import 'package:flutter/material.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';

class WalletAddCard extends StatelessWidget {
  const WalletAddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenW! * .1,
      height: SizeConfig.screenH! * .23,
      decoration: const BoxDecoration(
      
        image: DecorationImage(
          image: AssetImage("assets/dashed_border.png"),
          fit: BoxFit.cover
        ),

        color: Colors.white,
      ),
      child: InkWell(

        onTap: () {
        },
        child: const Icon(
          Icons.add_circle_outlined,
          color: Colors.black,
        ),
      ),
    );
  }
}
