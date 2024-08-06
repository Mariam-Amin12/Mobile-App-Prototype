import 'package:getpayin_task/feature/home/domain/Entity/transaction_entity.dart';

class TransactionModel extends TransactionEntity {
  TransactionModel(
      {required super.title,
      required super.subtitle,
      required super.price,
      required super.type});
  factory TransactionModel.formJson(Map<String, dynamic> json) =>
      TransactionModel(
          price: json["price"], title: json['title'], type: json['type'],subtitle: json['subtitle']);

}
