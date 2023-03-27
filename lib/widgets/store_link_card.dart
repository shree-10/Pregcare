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

  const ProductList({super.key, required this.storeItems});

  get logger => null;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: storeItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Card(
            child: Column(children: [
              Image.asset(
                storeItems[index].productImage,
                fit: BoxFit.cover,
                height: 75,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                storeItems[index].productName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 30.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink, // Background color
                  ),
                  onPressed: () {
                    String urlString = storeItems[index].productLink;
                    Uri uri = Uri.parse(urlString);

                    if (uri.scheme == 'http' || uri.scheme == 'https') {
                      launchUrl(uri);
                    } else {
                      logger.severe('Unsupported URL scheme: ${uri.scheme}');
                    }
                  },
                  child: const Text('Buy Now'),
                ),
              ),
            ]),
          ),
        );
      },
    );
  }
}


// Column(
//             children: [
//               const Center(),
//               const Padding(
//                 padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
//               ),
//               Ink.image(
//                 image: AssetImage(storeItems[index].productImage),
//                 height: 100,
//                 width: 100,
//                 fit: BoxFit.cover,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   storeItems[index].productName,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   String urlString = storeItems[index].productLink;
//                   Uri uri = Uri.parse(urlString);

//                   if (uri.scheme == 'http' || uri.scheme == 'https') {
//                     launchUrl(uri);
//                   } else {
//                     logger.severe('Unsupported URL scheme: ${uri.scheme}');
//                   }
//                 },
//                 child: const Text('Buy Now'),
//               ),
//             ],
//           ),