import 'package:flutter/material.dart';

Grad(String hexcolor) {
  hexcolor = hexcolor.toUpperCase().replaceAll("g", "");
  if (hexcolor.length == 6) {
    hexcolor = "FF" + hexcolor;
  }
  return Color(int.parse(hexcolor, radix: 16));
}



