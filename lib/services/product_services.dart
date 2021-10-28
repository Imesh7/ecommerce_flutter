import 'dart:convert';

import 'package:ecommerce_api_flutter/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductServices {
  Future<List<Product>> getProducts() async {
    var response =
        await http.get(Uri.parse("http://127.0.0.1:3000/api/products/all"));

    if (response.statusCode == 200) {
      final allProducts = jsonDecode(response.body);
      final listofproducts = allProducts.map((v) => Product.fromJson(v));
      return listofproducts;
    } else  {
      throw ApiReqError;
    }
  }
}

//handle errors
class ApiReqError implements Exception {}
