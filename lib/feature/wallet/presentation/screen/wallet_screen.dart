import 'package:flutter/material.dart';
import 'package:getpayin_task/feature/home/presentation/widget/Transaction.dart';
import 'package:getpayin_task/feature/wallet/presentation/view_model/wallet_view_model.dart';
import 'package:getpayin_task/feature/wallet/presentation/widget/wallet_header.dart';
import 'package:getpayin_task/feature/wallet/presentation/widget/wallet_scroller.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key, required this.walletViewModel});

   final WalletViewModel walletViewModel;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        WalletHeader( ),
        WalletScroller(),
        Transaction(ViewModel:walletViewModel,isWallet: walletViewModel.isWallet,),
      ],
    ));
  }
}