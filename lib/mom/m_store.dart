// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/store_link_card.dart';

class Mstore extends StatelessWidget {
  const Mstore({key})
      : storeItems = const [
          Store(
            productName: 'Prenatal vitamins',
            productImage: "assets/images/mS_prenatal.png",
            productLink:
                'https://www.amazon.in/Prenatal-Vitamins/s?k=Prenatal+Vitamins',
          ),
          Store(
            productName: 'Maternity clothes',
            productImage: "assets/images/mS_clothing.png",
            productLink: 'https://www.zivamoms.com/',
          ),
          Store(
            productName: 'Comfortable shoes',
            productImage: "assets/images/mS_foots.png",
            productLink:
                'https://www.shopsy.in/products-list/similar-products?screen=dynamic&pk=stores%3Dosp%2Fiko%2Fd20%2Fwar%2F~pIds%3DSHOGAW6EAZ2GSKFV~marketplace%3DFLIPKART~widgetType%3DproductCard~contentType%3DproductRecommendation%2Fsimilar&marketplace=FLIPKART',
          ),
          Store(
            productName: 'Maternity clothes',
            productImage: "assets/images/mS_breastPump.png",
            productLink:
                'https://www.firstcry.com/buddsbuddy/buddsbuddy-dura-plus-silicone-manual-breast-pump-with-feeding-nipple-gentle-and-easy-to-operate-bpa-free-multicolor/12699996/product-detail?ref=GoogleShopping_2_37!!Search_Standard-Shopping-Upto6-Months_New!!',
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
