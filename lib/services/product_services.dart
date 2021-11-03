import 'dart:convert';

import 'package:ecommerce_api_flutter/model/product_model.dart';
import 'package:http/http.dart' as http;

class ProductServices {
  /* ProductServices() {
    getProducts();
  } */

  Future<List<Product>> getProducts() async {
    var response =
        await http.get(Uri.parse("http://192.168.8.190:3000/api/products/all"));

    if (response.statusCode == 200) {
      print("response data: ${response.body}");
      final responseData = jsonDecode(response.body) as List;
      final productsList = responseData.map((e) => Product.fromJson(e)).toList();
      
      return productsList;
    } else {
      throw ApiReqError;
    }
  }
}

//handle errors
class ApiReqError implements Exception {}
