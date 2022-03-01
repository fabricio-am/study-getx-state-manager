import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPostwidget extends Container {
  CardPostwidget({this.text, this.color});
  final text, color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 8.0, left: 16.0, right: 16.0),
      decoration: BoxDecoration(color: color),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
