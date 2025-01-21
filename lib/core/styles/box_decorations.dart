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
}
