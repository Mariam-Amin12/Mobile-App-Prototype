import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/data/model/earning_model.dart';
import 'package:getpayin_task/feature/home/data/model/transaction_model.dart';
import 'package:getpayin_task/core/util/const/enum/transaction_typs.dart';

class HomeViewModel {
  final List<TransactionModel> items = [
    TransactionModel(
        title: "Adobe IIllustrator",
        subtitle: "Subcription fee",
        price: -150,
        type: TransactionTypes.subcription),
    TransactionModel(
        title: "Dribble",
        subtitle: "Subcription fee",
        price: 330,
        type: TransactionTypes.subcription),
    TransactionModel(
        title: "Sony Camera",
        subtitle: "Subcription fee",
        price: 1010,
        type: TransactionTypes.shopping),
    TransactionModel(
        title: "Paypal",
        subtitle: "Salary",
        price: -360,
        type: TransactionTypes.salary),
  ];

  final List color = [
    Colors.amber[600],
    Colors.red[200],
    Colors.blueGrey[700],
    Colors.deepOrange[500],
    Colors.deepPurpleAccent,
  ];
  final List earningModel = [
    EarningModel(name: "UpWork", price: 3000),
    EarningModel(name: "FreePick", price: 3000),
    EarningModel(name: "Canva", price: 3200),
    EarningModel(name: "Schooler", price: 1020),
    EarningModel(name: "UpWork", price: 3000),
  ];
  // Home screen strings
  final String goodMorning = "Good Mornging !";
  final String totalBalance = "Total Balance";
  final String myWallet = "My Wallet";
  final String income = "Income";
  final String outcome = "Outcome";
  final String earning = "Earning";
  final String transaction = "Transacion";

  final bool isWallet = false;
}
