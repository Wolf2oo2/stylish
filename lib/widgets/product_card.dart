import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
  const ProductCard({
    this.image,
    required this.productTitle,
    required this.price,

    super.key,
  });
final String? image;
final String productTitle;
final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: const Offset(15, 40),
              color: const Color(0xff000000).withOpacity(.2),
              blurRadius: 40),
        ],
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.only(start: 8, ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,//decoration: BoxDecoration(image: DecorationImage(image: image)),
            ),
            SizedBox(height: 30,
              child: Row(
                children: [
                  Text(
                    '\$$price',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite),
                    iconSize: 20,
                  )
                ],
              ),
            ),
            Text(
            productTitle,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
