import 'package:getpayin_task/core/util/const/enum/transaction_typs.dart';
import 'package:getpayin_task/feature/home/data/model/transaction_model.dart';

class WalletViewModel {
  final bool isWallet = true;
  final String transaction = "Transaction";

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
}

