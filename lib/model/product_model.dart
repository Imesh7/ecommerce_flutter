

import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  String? name, lastName, add;
  bool? subscription;

  Product({this.name,this.lastName,this.add,this.subscription,});

  factory Product.fromJson(Map<String,dynamic> data) => _$ProductFromJson(data);

  Map<String,dynamic> toJson() => _$ProductToJson(this);

}