// ignore_for_file: must_be_immutable

import "package:flutter/material.dart";

class Category extends StatelessWidget {
  Category({super.key, this.text, this.color, this.onTap});
  String? text;
  Color? color;
  Function()? onTap; //VoidCallBack onTap: is a void function
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        height: 50,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
