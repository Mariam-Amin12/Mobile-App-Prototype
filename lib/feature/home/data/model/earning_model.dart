import 'package:getpayin_task/feature/home/domain/earning_entity.dart';

class EarningModel extends EarningEntity {
  EarningModel({required super.name, required super.price});

  factory EarningModel.fromJson(Map<String, dynamic> json) =>
      EarningModel(name: json['name'], price: json['price']);
}
