import 'package:flutter/material.dart';

double kHeight(context) {
  return MediaQuery.of(context).size.height;
}

double kWidth(context) {
  return MediaQuery.of(context).size.width;
}

dynamic kWidthConditions(
  context, {
  required dynamic valueIsTrue,
  required dynamic valueIsFalse,
}) {
  return kWidth(context) >= 340 && kWidth(context) <= 380
      ? valueIsTrue
      : valueIsFalse;
}

dynamic kHeightConditions(
  context, {
  required dynamic valueIsTrue,
  required dynamic valueIsFalse,
}) {
  return kHeight(context) >= 760 && kHeight(context) <= 850
      ? valueIsTrue
      : valueIsFalse;
}

dynamic kWidthConditionsFonts(
  context, {
    
  required bool isConditions,
  required fontSizeLargeTrue,
  required fontSizeLargeFalse,
  required fontSizeSmallTrue,
  required fontSizeSmallFalse,
}) {
  if (isConditions) {
    return kWidth(context) >= 340 && kWidth(context) <= 380
        ? fontSizeLargeTrue
        : fontSizeLargeFalse;
  } else {
    return kWidth(context) >= 340 && kWidth(context) <= 380
        ? fontSizeSmallTrue
        : fontSizeSmallFalse;
  }
}

dynamic kHeightConditionsFonts(
  context, {
  required fontSizeLargeTrue,
  required fontSizeLargeFalse,
  required fontSizeSmallTrue,
  required fontSizeSmallFalse,
  required bool isConditions,
}) {
  if (isConditions) {
  return kHeight(context) >= 760 && kHeight(context) <= 850
        ? fontSizeLargeTrue
        : fontSizeLargeFalse;
  } else {
  return kHeight(context) >= 760 && kHeight(context) <= 850
        ? fontSizeSmallTrue
        : fontSizeSmallFalse;
  }
}
