// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/store_link_card.dart';

class Mstore extends StatelessWidget {
  const Mstore({key})
      : storeItems = const [
          Store(
            productName: 'Prenatal vitamins',
            productImage: "assets/images/store/m_clothing.png",
            productLink:
                'https://www.amazon.in/Prenatal-Vitamins/s?k=Prenatal+Vitamins',
          ),
          Store(
            productName: 'Product 2',
            productImage: 'assets/images/store/M_maternity_cloths.png',
            productLink: 'https://www.zivamoms.com/',
          ),
          // Add more products here
        ],
        super(key: key);

  final List<Store> storeItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Store",
          style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        ),
      ),
      body: ProductList(storeItems: storeItems),
    );
  }
}
