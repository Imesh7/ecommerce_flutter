import 'package:ecommerce_api_flutter/bloc/product_bloc.dart';
import 'package:ecommerce_api_flutter/bloc/product_state.dart';
import 'package:ecommerce_api_flutter/screens/widgets/appdrawer.dart';
import 'package:ecommerce_api_flutter/services/product_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'product_details.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Appdrawer(),
      appBar: AppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<ProductBloc, ProductState>(
            builder: (context, state) {
            print("run build $state");
            if (state is LoadingState) {
              return const CircularProgressIndicator();
            } else if (state is LoadedProductsState) {
              return SizedBox(
                height: 280,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: state.listofProducts.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(
                          context, MaterialPageRoute(
                            builder: (context)=> ProductDetails(
                              productName: state
                                    .listofProducts[index].name!,
                                    productPrice: state
                                    .listofProducts[index].price!,
                                    productImageUrl: state
                                    .listofProducts[index].imageUrl!,
                                    productId:  state
                                    .listofProducts[index].id!,
                            )));
                        },
                        child: SizedBox(
                          width: 180,
                          child: Card(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.network(state
                                    .listofProducts[index].imageUrl
                                    .toString()),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    state.listofProducts[index].name.toString()),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Rs. ${state.listofProducts[index].price.toString()}',
                                  style: const TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )),
                        ),
                      );
                    }),
              );
            } else {
              return const Center(child: Text("datas"));
            }
          })
        ],
      ),
    );
  }
}
