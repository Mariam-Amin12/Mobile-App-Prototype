import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/view_model/home_controller.dart';
import 'package:getpayin_task/core/common/widget/circular_image.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.homeViewModel});
  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const CircularImage(),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(homeViewModel.goodMorning,
                    style: AppTextStyle.normalText(SizeConfig.screenW)),
                Text("Client Name ",
                    style: AppTextStyle.headerText1(SizeConfig.screenW)),
              ],
            ),
          ),
          Expanded(child: Container()),
          IconButton(
              icon: const Icon(Icons.notifications_active_outlined),
              onPressed: () {}),
        ],
      ),
    );
  }
}
