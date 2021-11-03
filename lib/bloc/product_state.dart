import 'package:ecommerce_api_flutter/model/product_model.dart';
import 'package:equatable/equatable.dart';

class ProductState extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadingState extends ProductState{
  
}

class LoadedProductsState extends ProductState {
  final List<Product> _pro;

  LoadedProductsState(this._pro);

  List<Product> get listofProducts => _pro;

  @override
  List<Object?> get props => [_pro];
}

class FailtoLoodProducts extends ProductState {
  final String? message;

  FailtoLoodProducts({this.message});
}
