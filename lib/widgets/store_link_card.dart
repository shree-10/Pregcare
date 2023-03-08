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
              Center(),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              ),
              Ink.image(
                image: AssetImage(storeItems[index].productImage),
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  storeItems[index].productName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
