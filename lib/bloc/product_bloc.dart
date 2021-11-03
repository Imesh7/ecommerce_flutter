import 'package:ecommerce_api_flutter/bloc/product_event.dart';
import 'package:ecommerce_api_flutter/bloc/product_state.dart';
import 'package:ecommerce_api_flutter/model/product_model.dart';
import 'package:ecommerce_api_flutter/services/product_services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(LoadingState());

  @override
  Stream<ProductState> mapEventToState(ProductEvent event) async* {
    if (event is LoadProductsEvent) {

    // await Future.delayed(Duration(seconds: 10));
      final product = await ProductServices().getProducts();
      yield LoadedProductsState(product);
    } else {
      print("no data");
    }
  }
}
