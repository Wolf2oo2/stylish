import 'package:flutter/material.dart';
class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.title,
    required this.onPressed,
    required this.buttonWidth,
    required this.backGroundIcon,
    required this.buttonColor,
    super.key,
  });
  final String title;
  final void Function() onPressed;
  final double buttonWidth;
  final Color buttonColor;
  final Color backGroundIcon;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration( boxShadow: [
        BoxShadow(
            blurRadius: 25,
            color: const Color(0xFF5468FF).withOpacity(0.5),
            offset: const Offset(0,10)
        ),
      ],),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // minimumSize:  Size(315, 58),
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed:onPressed,
        child: SizedBox(
          height: 58,
          width: buttonWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 95),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: backGroundIcon,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
