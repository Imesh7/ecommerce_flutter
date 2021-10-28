// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      name: json['name'] as String?,
      lastName: json['lastName'] as String?,
      add: json['add'] as String?,
      subscription: json['subscription'] as bool?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'name': instance.name,
      'lastName': instance.lastName,
      'add': instance.add,
      'subscription': instance.subscription,
    };
