import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:getpayin_task/feature/wallet/presentation/widget/wallet_add_card.dart';
import 'package:getpayin_task/feature/wallet/presentation/widget/wallet_card_item.dart';

class WalletScroller extends StatelessWidget {
  const WalletScroller({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
         Padding(
           padding: const EdgeInsets.only(left:20,right: 10) ,
           child: WalletAddCard(),
         ),
         WalletCardItem(),
         WalletCardItem(),
        ],

      ),
    );
  }
}
