// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';


class CustomProfileListTile extends StatelessWidget {
  const CustomProfileListTile(
      {required this.title,
        required this.leading,
        this.trailing,
        this.marginBottom = 15,
        this.onPress,
        super.key});

  final String title;
  final IconData leading;
  final IconData? trailing;
  final double marginBottom;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(bottom: marginBottom),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      child: ListTile(
          leading: Container(
            padding: const EdgeInsetsDirectional.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(15),
              color: const Color(0xff2918F8).withOpacity(0.3),
            ),
            child: Icon(leading, color: const Color(0xff2918F8)),
          ),
          title: Text(
            title,
            style: const TextStyle(
                color: Color(0xFF090F24), fontWeight: FontWeight.bold, fontSize: 16),
          ),
          trailing: IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: onPress,
            icon: Icon(
              trailing,
              color: const Color(0xFF090F24),
            ),
          )),
    );
  }
}