import 'package:flutter/material.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key, required this.widget, required this.title,
  });
  final Widget widget;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Text(title, style: AppTextStyle.normalGrey(SizeConfig.screenW))),
        Expanded(
          flex: 3,
          child:widget
        )
      ],
    );
  }
}
