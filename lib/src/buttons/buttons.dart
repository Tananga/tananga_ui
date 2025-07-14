import 'package:flutter/material.dart';

class Buttons {
  Widget simpleButton({
    Key? key,
    required String text,
    required VoidCallback? onPressed,
    Color? backgroundColor,
    Color? textColor,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            backgroundColor ?? Colors.white, // default color is white
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18), // adjust value as needed
        ),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: textColor ?? Colors.black,
        ),
      ),
    );
  }
}
