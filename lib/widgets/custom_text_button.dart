import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    required this.title,
    required this.onPress,
    super.key,
  });
  final String title;
  final void Function() onPress;

  @override
  Widget build(BuildContext context) {
    return TextButton(     onPressed: onPress,
      child: Text(
        title,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    );
  }
}
