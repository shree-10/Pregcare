import 'package:flutter/material.dart';
import 'package:pregcare/baby/product.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class bbirth extends StatefulWidget {
  const bbirth({super.key});

  @override
  _bbirth createState() => _bbirth();
}

class _bbirth extends State<bbirth> {

  List<Product> productList = [
    Product('assets/images/week_2.png', '2 Weeks Pregnent', "Ovulation may happen about two weeks after your last period began. If egg meets sperm, you're on your way to being pregnant."),
    Product('assets/images/week_3.png', '3 Weeks Pregnent', "At 3 weeks after your last period - about 1 week after fertilization - your baby is a tiny ball made up of several hundred cells that are multiplying quickly."),
    Product('assets/images/week_4.png', '4 Weeks Pregnent', "At 4 weeks, your baby is an embryo made up of two layers, and your primitive placenta is developing."),
    Product('assets/images/week_5.png', '5 Weeks Pregnent', "At 5 weeks, your tiny embryo is growing like crazy, and you may be noticing pregnancy discomforts like sore breasts and fatigue."),
    Product('assets/images/week_6.png', '6 Weeks Pregnent', "At 6 weeks, your baby's heart has started beating. You may have morning sickness and sore breasts."),
    Product('assets/images/week_7.png', '7 Weeks Pregnent', "At 7 weeks, your baby's eyes, nose, mouth, and ears are taking shape. You may need to pee constantly."),
    Product('assets/images/week_8.png', '8 Weeks Pregnent', "At 8 weeks, your baby's hands and feet are sprouting webbed fingers and toes. You may have nausea and fatigue. And you may make decisions about prenatal tests."),
    Product('assets/images/week_9.png', '9 Weeks Pregnent', "At 9 weeks, your baby is starting to look more like a tiny human. You may have morning sickness and mood swings."),
    Product('assets/images/week_10.png', '10 Weeks Pregnent', "At 10 weeks, your baby has finished the most critical part of development! You might be ready for maternity clothes, or at least some new bras."),
    Product('assets/images/week_11.png', '11 Weeks Pregnent', "At 11 weeks pregnant, your baby's busy kicking and stretching. But you won't feel that for a while yet."),
    Product('assets/images/week_12.png', '12 Weeks Pregnent', "Your baby can curl those tiny toes and make sucking movements when you're 12 weeks pregnant. You may be having heartburn."),
    Product('assets/images/week_13.png', '13 Weeks Pregnent', "At 13 weeks pregnant, you're in the last week of the first trimester. Your baby now has exquisite fingerprints and is almost 3 inches long."),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 750,
              child: ScrollSnapList(
                itemBuilder: _buildListItem,
                itemCount: productList.length,
                itemSize: 550,
                onItemFocus: (index) {},
                dynamicItemSize: true,
              ),
            ),
          ),
          
        ));
  }

  Widget _buildListItem(BuildContext context, int index) {
    Product product = productList[index];
    return SizedBox(
      width: 550,
      height: 200,
      child: Card(
        elevation: 12,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  product.imagePath,
                  fit: BoxFit.cover,
                  width: 450,
                  height: 480,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.title,
                        style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ],
              ),
              const SizedBox(
                height: 20,
              ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    product.desc,
                    style: const TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

}




