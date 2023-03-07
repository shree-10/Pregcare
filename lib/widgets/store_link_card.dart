import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Store {
  final String productName;
  final String productImage;
  final String productLink;

  const Store(
      {required this.productName,
      required this.productImage,
      required this.productLink});
}

class ProductList extends StatelessWidget {
  final List<Store> storeItems;

  ProductList({required this.storeItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: storeItems.length,
      itemBuilder: (context, index) {
        return Card(
          child: Column(
            children: [
              Ink.image(
                image: AssetImage(storeItems[index].productImage),
                height: 50,
                width: 50,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(storeItems[index].productName),
              ),
              ElevatedButton(
                onPressed: () {
                  launch(storeItems[index].productLink);
                },
                child: Text('Buy Now'),
              ),
            ],
          ),
        );
      },
    );
  }
}
