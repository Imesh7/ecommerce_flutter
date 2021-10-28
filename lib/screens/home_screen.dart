import 'package:ecommerce_api_flutter/model/product_model.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          
          /* StreamBuilder(
            stream: null,
            builder: (context, snapshot) {
              return GridView.builder(
                itemCount: snapshot.data!.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (MediaQuery.of(context).orientation == Orientation.portrait) ? 2 : 3),
                itemBuilder: (BuildContext context, int index) {
                  return  Card(
                    child:  GridTile(
                      footer:  Text(data[index]['name']),
                      child:  Text(data[index]
                          ['image']), 
                    ),
                  );
                },
              );
            }
          ), */
        ],
      ),
    );
  }
}
