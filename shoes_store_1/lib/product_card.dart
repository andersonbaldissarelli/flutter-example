import 'package:flutter/material.dart';
import 'custom_icon.dart';

class ProductCard extends StatelessWidget {
  int cardColor;
  String imgUrl;
  String title;
  String previousPrice;
  String price;

  ProductCard(
      this.cardColor, this.imgUrl, this.title, this.previousPrice, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.00,
      height: 270.0,
      decoration: BoxDecoration(
          color: Color(cardColor),
          borderRadius: BorderRadius.circular(20.00),
          border: Border.all(color: Colors.grey.withOpacity(.3), width: .2)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 15.0,
          ),
          Image.asset(
            imgUrl,
            width: 200.0,
            height: 140.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(title,
              style: TextStyle(
                  color: Color(0xFF455a64),
                  fontSize: 22.0,
                  fontFamily: "Raleway")),
          SizedBox(
            height: 15.0,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(CustomIcons.favorite),
                    onPressed: () {},
                  ),
                  Column(
                    children: <Widget>[
                      Text(previousPrice,
                          style: TextStyle(
                              color: Color(0xFFfeb0ba),
                              fontSize: 13.0,
                              fontFamily: "Helvetica")),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(price,
                          style: TextStyle(
                              fontSize: 23.0, fontFamily: "Helvetica"))
                    ],
                  ),
                  IconButton(
                    icon: Icon(CustomIcons.cart),
                    onPressed: () {},
                  )
                ],
              ))
        ],
      ),
    );
  }
}
