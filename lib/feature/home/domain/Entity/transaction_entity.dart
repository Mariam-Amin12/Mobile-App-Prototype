// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:getpayin_task/core/util/const/enum/transaction_typs.dart';

class TransactionEntity extends Equatable {
  final String title;
  final String subtitle;
  final double price;
  TransactionTypes type ;

    TransactionEntity({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.type,
  });

  @override
  List<Object?> get props =>[title,subtitle,price,type];

}
