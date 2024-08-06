import 'package:flutter/material.dart';
import 'package:getpayin_task/core/util/const/enum/transaction_typs.dart';

class TransactionIcon extends StatelessWidget {
  const TransactionIcon({
    super.key, required this.transactionTypes,
  });
  final TransactionTypes transactionTypes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: transactionTypes==TransactionTypes.subcription? const Color.fromRGBO(230, 217, 158, 0.2):transactionTypes==TransactionTypes.shopping? const Color.fromRGBO(230, 158, 170, 0.2):transactionTypes==TransactionTypes.salary? const Color.fromRGBO(166, 240, 153, 0.2):const Color.fromRGBO(240, 198, 153, 0.2)),
        child: Center(
          child: Icon( transactionTypes==TransactionTypes.subcription?
            Icons.laptop_chromebook_outlined: transactionTypes==TransactionTypes.salary?Icons.account_balance_wallet: Icons.shopping_bag_outlined,
            color: transactionTypes==TransactionTypes.subcription? const Color.fromARGB(255, 240, 192, 80):transactionTypes==TransactionTypes.shopping? const Color.fromRGBO(230, 158, 170, 1):transactionTypes==TransactionTypes.salary? const Color.fromARGB(255, 51, 147, 34):const Color.fromRGBO(240, 198, 153, 1),
          ),
        ),
      ),
    );
  }
}
