import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.controller,
    required this.hint,
    this.suffix,
    this.radiusTop = 0,
    this.onPress,
    this.radiusBottom = 0,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.obscure=false,
    this.errorText,
    required this.keyboard,
    this.constraints=0,
    this.backGroundSuffixColor=Colors.transparent,
    this.suffixColor=Colors.white30,

    super.key,
  });

  final void Function()? onPress;
  final IconData? suffix;
  final double radiusBottom;
  final double radiusTop;
  final String hint;
  final double paddingTop;
  final double paddingBottom;
  final TextEditingController controller;
  final bool obscure ;
  final String? errorText;
  final TextInputType keyboard;
  final double constraints;
  final Color backGroundSuffixColor;
  final Color suffixColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: paddingBottom,
        top: paddingTop,
      ),
      child: TextField(
        obscureText:obscure,
        controller: controller,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Color(0xff211F36),
        ),
        keyboardType: keyboard,
        textCapitalization: TextCapitalization.words,
        cursorColor: const Color(0xff5468FF),
        textInputAction: TextInputAction.go,
        decoration: InputDecoration(
          errorText:errorText ,
          suffixIcon: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15 ),color:backGroundSuffixColor ),
            child: IconButton(
              onPressed: onPress,
              icon: Icon(suffix), disabledColor: suffixColor,
            ),
          ),
          constraints:  BoxConstraints(maxHeight: constraints, maxWidth: 315),
          contentPadding: const EdgeInsetsDirectional.only(
            start: 20,
            top: 22,
            bottom: 22,
            end: 50,
          ),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Color(0xffe4e4e6),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only( topRight: Radius.circular(radiusTop),
                topLeft: Radius.circular(radiusTop),
                bottomRight: Radius.circular(radiusBottom),
                bottomLeft: Radius.circular(radiusBottom)),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only( topRight: Radius.circular(radiusTop),
                topLeft: Radius.circular(radiusTop),
                bottomRight: Radius.circular(radiusBottom),
                bottomLeft: Radius.circular(radiusBottom)),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(radiusTop),
                topLeft: Radius.circular(radiusTop),
                bottomRight: Radius.circular(radiusBottom),
                bottomLeft: Radius.circular(radiusBottom)),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.transparent),

          ),
        ),
      ),
    );
  }
}
