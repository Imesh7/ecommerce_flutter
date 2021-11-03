import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  int? id;
  String? name;
  int? price;
  String? imageUrl;

  Product({
    this.name,
    this.price,
    this.id,
    this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> data) =>
      _$ProductFromJson(data);

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
