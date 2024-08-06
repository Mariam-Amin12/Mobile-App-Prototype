import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/data/model/transaction_model.dart';
import 'package:getpayin_task/feature/home/presentation/widget/transaction_icon.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class TransactionCardItem extends StatelessWidget {
  const TransactionCardItem({
    super.key, required this.transactionModel,
  });
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Container(
        height: 100,
        width: SizeConfig.screenW!*.97  ,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TransactionIcon(
              transactionTypes: transactionModel.type,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(transactionModel.title,
                      style: AppTextStyle.headerText1(
                        SizeConfig.screenW,
                      )),
                  Text(transactionModel.subtitle,
                      style: AppTextStyle.normalGrey(
                        SizeConfig.screenW,
                      )),
                ],
              ),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(transactionModel.price>0?
                "+\$${transactionModel.price}":"-\$${transactionModel.price*-1}",
                style: transactionModel.price>0?AppTextStyle.income(
                  SizeConfig.screenW,
                ):AppTextStyle.outcome(
                  SizeConfig.screenW)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
