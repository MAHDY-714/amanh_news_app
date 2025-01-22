import 'package:flutter/material.dart';

abstract class BoxDecorations {
  BoxDecorations._();

  static BoxDecoration newsCategoryDecoration({required String image}) {
    return BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(16.0),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    );
  }

  static BoxDecoration imageInNewsItemBuilderBoxDecoration(
      {required String image}) {
    return BoxDecoration(
      color: Color(0xFF420504),
      border: Border.all(
        color: Colors.grey,
        width: 1.0,
      ),
      borderRadius: BorderRadius.circular(14.0),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(image),
      ),
    );
  }
}
