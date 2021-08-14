import 'package:flutter/material.dart';

class AppColor extends Color {
  AppColor(int value) : super(value);

  static const principalColor = Color.fromRGBO(0, 173, 239, 1);
  static const secondColor = Color.fromRGBO(72, 86, 101, 1);
  static const thirdColor = Color.fromRGBO(249,194,40,1);
  static ButtonStyle primaryButton = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: principalColor,
    minimumSize: Size(double.infinity, 44),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );
}
