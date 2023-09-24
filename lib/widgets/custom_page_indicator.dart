import 'package:flutter/material.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({

    this.marginEnd = 0,
    required this.isCurrentIndex,
    super.key,
  });
  final double marginEnd;
  final bool isCurrentIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(end: marginEnd, ),
      height: 8,
      width: isCurrentIndex ?40:8,
      decoration: BoxDecoration(
        color: isCurrentIndex ?const Color(0xff2918F8):const Color(0xffe4e4e6),
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
