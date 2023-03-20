import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/store_link_card.dart';

class BStore extends StatelessWidget {
  const BStore({key})
      : storeItems = const [
          Store(
            productName: 'Diapers',
            productImage: "assets/images/bS_diaper_1.png",
            productLink:
                'https://www.firstcry.com/diapering?ref2=menu_dd_catlanding',
          ),
          Store(
            productName: 'Baby clothes',
            productImage: "assets/images/bS_clothing.png",
            productLink: 'https://www.flipkart.com/q/new-born-clothes',
          ),
          Store(
            productName: 'Swaddling blankets',
            productImage: "assets/images/bS_blankets.png",
            productLink:
                'https://www.amazon.in/Baby-Swaddle-Blanket/s?k=Baby+Swaddle+Blanket',
          ),
          Store(
            productName: 'Baby lotion, shampoo, and soap',
            productImage: "assets/images/bS_shampoo.png",
            productLink:
                'https://www.flipkart.com/baby-care/baby-gift-sets-combo/baby-bath-hair-skin-care-combo/pr?sid=kyh%2Cutp%2Cbte',
          ),
          Store(
            productName: 'Baby Wipes',
            productImage: "assets/images/bS_babywipes.png",
            productLink:
                'https://www.amazon.in/Baby-Wet-Wipes/b?ie=UTF8&node=1953142031',
          ),
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
