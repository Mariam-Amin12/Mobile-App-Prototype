import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/data/model/transaction_model.dart';
import 'package:getpayin_task/feature/home/presentation/widget/transaction_card_item.dart';

class TransactionCards extends StatelessWidget {
  TransactionCards({super.key, required this.ViewModel, required this.transactionModels});
  final  ViewModel;
  final List<TransactionModel> transactionModels;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: transactionModels
              .map((e) => TransactionCardItem(
                    transactionModel: e,
                  ))
              .toList()),
    );
  }
}
