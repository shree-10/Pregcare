import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Store extends StatelessWidget {
  final String imageUrl;
  final String url;
  final String text;

  const Store(
      {Key? key, required this.imageUrl, required this.url, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.network(
            imageUrl,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () async {
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Text('Buy Now'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
