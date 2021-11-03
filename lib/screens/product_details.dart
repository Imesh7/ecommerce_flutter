import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  int productId;
  String productName;
  String productImageUrl;
  int productPrice;

  ProductDetails(
      {Key? key,
      required this.productId,
      required this.productName,
      required this.productImageUrl,
      required this.productPrice})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(productName.toUpperCase()),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width,
                child: Image.network(productImageUrl)),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      productName,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Rs. ${productPrice.toString()}"),
                    /* IconButton(
                        onPressed: () {}, 
                        icon: const Icon(Icons.shopping_bag)) */
                    TextButton.icon(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_bag,
                          color: Colors.black,
                        ),
                        label: const Text(
                          'Add To Cart',
                          style: TextStyle(color: Colors.black54, fontSize: 22),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
