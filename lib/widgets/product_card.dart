import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  ProductCard({
    this.image,
    required this.productTitle,
    required this.price,
    this.press = false,

    super.key,
  });

  final String? image;
  final String productTitle;
  final double price;
  bool press;


  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {

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
        padding: const EdgeInsetsDirectional.only(start: 8,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90, //decoration: BoxDecoration(image: DecorationImage(image: image)),
            ),
            SizedBox(height: 30,
              child: Row(
                children: [
                  Text(
                    '\$${widget.price}',
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ), const Spacer(),
                  IconButton(
                    onPressed: () {


                    },
                    icon: widget.press ? const Icon(
                        Icons.favorite, color: Colors.red) : const Icon(
                        Icons.favorite_border_outlined),
                    iconSize: 20,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                  )
                ],
              ),
            ),
            Text(
              widget.productTitle,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
