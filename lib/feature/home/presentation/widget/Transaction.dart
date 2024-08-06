import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/widget/scroller.dart';
import 'package:getpayin_task/feature/home/presentation/widget/transaction_cards.dart';
import 'package:getpayin_task/core/util/const/size/size_config.dart';
import 'package:getpayin_task/core/util/const/style/app_text_style.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key, required this.ViewModel, required this.isWallet});
  final ViewModel;
  final bool isWallet;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Scroller(
              title: ViewModel.transaction,
              isWallet: ViewModel.isWallet,
            ),
            isWallet==false?Text(

              "Today",
              style: AppTextStyle.normalGrey(SizeConfig.screenW),
            ):Container(),
            TransactionCards(
              ViewModel: ViewModel,
              transactionModels:ViewModel.items
            ),
          ],
        ),
      ),
    );
  }
}
