import 'package:flutter/material.dart';
class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    required this.imageName,
    required this.title,
    required this.subTitle,
    super.key,
  });
  final String imageName;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('images/$imageName.png'),
        const SizedBox(height: 10,),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 17,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(subTitle,textAlign: TextAlign.center
            ,style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        )
      ],
    );
  }
}