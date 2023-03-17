import 'package:flutter/material.dart';
import 'package:pregcare/baby/product.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class bbirth extends StatefulWidget {
  const bbirth({Key? key}) : super(key: key);

  @override
  _bbirthState createState() => _bbirthState();
}

class _bbirthState extends State<bbirth> {

  final List<Product> productList = [
    Product('assets/images/week_2.png', '2 Weeks Pregnent',
        "Ovulation may happen about two weeks after your last period began. If egg meets sperm, you're on your way to being pregnant."),
    Product('assets/images/week_3.png', '3 Weeks Pregnent',
        "At 3 weeks after your last period - about 1 week after fertilization - your baby is a tiny ball made up of several hundred cells that are multiplying quickly."),
    Product('assets/images/week_4.png', '4 Weeks Pregnent',
        "At 4 weeks, your baby is an embryo made up of two layers, and your primitive placenta is developing."),
    Product('assets/images/week_5.png', '5 Weeks Pregnent',
        "At 5 weeks, your tiny embryo is growing like crazy, and you may be noticing pregnancy discomforts like sore breasts and fatigue."),
    Product('assets/images/week_6.png', '6 Weeks Pregnent',
        "At 6 weeks, your baby's heart has started beating. You may have morning sickness and sore breasts."),
    Product('assets/images/week_7.png', '7 Weeks Pregnent',
        "At 7 weeks, your baby's eyes, nose, mouth, and ears are taking shape. You may need to pee constantly."),
    Product('assets/images/week_8.png', '8 Weeks Pregnent',
        "At 8 weeks, your baby's hands and feet are sprouting webbed fingers and toes. You may have nausea and fatigue. And you may make decisions about prenatal tests."),
    Product('assets/images/week_9.png', '9 Weeks Pregnent',
        "At 9 weeks, your baby is starting to look more like a tiny human. You may have morning sickness and mood swings."),
    Product('assets/images/week_10.png', '10 Weeks Pregnent',
        "At 10 weeks, your baby has finished the most critical part of development! You might be ready for maternity clothes, or at least some new bras."),
    Product('assets/images/week_11.png', '11 Weeks Pregnent',
        "At 11 weeks pregnant, your baby's busy kicking and stretching. But you won't feel that for a while yet."),
    Product('assets/images/week_12.png', '12 Weeks Pregnent',
        "Your baby can curl those tiny toes and make sucking movements when you're 12 weeks pregnant. You may be having heartburn."),
    Product('assets/images/week_13.png', '13 Weeks Pregnent',
        "At 13 weeks pregnant, you're in the last week of the first trimester. Your baby now has exquisite fingerprints and is almost 3 inches long."),
    Product('assets/images/week_39.png', '39 Weeks Pregnent',
        "At 39 weeks pregnant, your baby is full term and waiting to greet the world! If your water breaks, call your healthcare provider."),
    Product('assets/images/week_40.png', '40 Weeks Pregnent',
        "At 40 weeks pregnant, your baby is the size of a small pumpkin! Don't worry if you're still pregnant - it's common to go past your due date."),
    Product('assets/images/week_41.png', '41 Weeks Pregnent',
        "At 41 weeks pregnant, you'll go into labor or be induced soon. Your baby should remain active right up until delivery."),
  ];

  @override
  Widget build(BuildContext context) {
    final itemHeight = MediaQuery
        .of(context)
        .size
        .height * 0.75;
    final itemWidth = MediaQuery
        .of(context)
        .size
        .width * 0.8;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: itemHeight,
              child: ScrollSnapList(
                itemBuilder: (context, index) =>
                    _buildListItem(context, index, itemWidth, itemHeight),
                itemCount: productList.length,
                itemSize: itemWidth,
                onItemFocus: (index) {},
                dynamicItemSize: true,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListItem(BuildContext context, int index, double itemWidth,
      double itemHeight) {
    final product = productList[index];

    return SizedBox(
      width: itemWidth,
      height: itemHeight,
      child: Card(
        elevation: 12,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  product.imagePath,
                  fit: BoxFit.cover,
                  width: itemWidth * 0.75,
                  height: itemHeight * 0.3,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      product.title,
                      style: TextStyle(fontSize: itemWidth * 0.080,
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      product.desc,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: itemWidth * 0.065,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}