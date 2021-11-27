import 'package:day_1_invoice_ui/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidht = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    Widget buildItemCard(
        int index, String imgurl, int unitPrice, String title, int price) {
      return Card(
        elevation: 5,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          // margin: EdgeInsets.symmetric(horizontal: 30),
          height: ScreenConfig.getProportionalHeight(80),
          color: Colors.white.withOpacity(.93),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$index',
                style: TextStyle(color: Colors.black),
              ),
              Image.asset(
                imgurl,
                height: 35,
                width: 35,
                fit: BoxFit.cover,
              ),
              Text(
                '\$$unitPrice',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                width: ScreenConfig.getProportionalWidth(150),
                child: Text(
                  title,
                  maxLines: 3,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: ScreenConfig.getProportionalHeight(15),
                  ),
                ),
              ),
              Text(
                '\$$price',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: iPrimaryColor,
      body: Column(
        children: [
          Container(
            width: deviceWidht,
            height: ScreenConfig.getProportionalHeight(350),
            color: Color(0xFF404F52),
            padding: EdgeInsets.symmetric(
              vertical: ScreenConfig.getProportionalHeight(50),
              horizontal: ScreenConfig.getProportionalWidth(40),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Invoice',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: ScreenConfig.getProportionalHeight(50),
                  ),
                ),
                SizedBox(
                  height: ScreenConfig.getProportionalHeight(20),
                ),
                Text(
                  '#20/07/1203',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(.6),
                    fontSize: ScreenConfig.getProportionalHeight(18),
                  ),
                ),
                SizedBox(
                  height: ScreenConfig.getProportionalHeight(20),
                ),
                Text(
                  '22 September 2020',
                  style: TextStyle(
                    fontSize: ScreenConfig.getProportionalHeight(18),
                  ),
                ),
                SizedBox(
                  height: ScreenConfig.getProportionalHeight(30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.payment,
                        color: Colors.white,
                        size: ScreenConfig.getProportionalHeight(50)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Delivery address',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: ScreenConfig.getProportionalHeight(18),
                          ),
                        ),
                        Text(
                          'KK 234 rd 23 st',
                          style: TextStyle(),
                        ),
                        Text(
                          'Kimihurura',
                          style: TextStyle(),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: deviceHeight - ScreenConfig.getProportionalHeight(350),
            width: double.infinity,
            color: iPrimaryColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Text(
                        'Items',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: ScreenConfig.getProportionalHeight(25),
                        ),
                      ),
                      SizedBox(
                        width: ScreenConfig.getProportionalWidth(30),
                      ),
                      Container(
                        height: ScreenConfig.getProportionalHeight(35),
                        width: ScreenConfig.getProportionalWidth(130),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: iAccentColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.add),
                              SizedBox(
                                width: ScreenConfig.getProportionalWidth(10),
                              ),
                              Text(
                                'Add Items',
                                style: TextStyle(color: Colors.black87),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    buildItemCard(1, 'assets/images/img1.jpg', 5,
                        'Gingerbread Cake with Orange Cream Cheese', 10),
                    SizedBox(
                      height: ScreenConfig.getProportionalHeight(10),
                    ),
                    buildItemCard(2, 'assets/images/img2.jpg', 10,
                        'Sauteed Onion and Hotdog with ketchup', 40),
                    SizedBox(
                      height: ScreenConfig.getProportionalHeight(10),
                    ),
                    buildItemCard(3, 'assets/images/img1.jpg', 14,
                        'Supreme Pizza Recipe', 14)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Total:',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black.withOpacity(.6)),
                      ),
                      SizedBox(
                        width: ScreenConfig.getProportionalWidth(20),
                      ),
                      Text(
                        '\$64',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  height: ScreenConfig.getProportionalHeight(40),
                  width: deviceWidht,
                  child: Center(
                    child: Text(
                      'Download Now',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w800),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: iAccentColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
