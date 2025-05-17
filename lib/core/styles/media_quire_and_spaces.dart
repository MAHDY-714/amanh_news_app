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
  return kWidth(context) >= 350 && kWidth(context) <= 400
      ? valueIsTrue // small phone
      : valueIsFalse; // large phone
}

dynamic kHeightConditions(
  context, {
  required dynamic valueIsTrue,
  required dynamic valueIsFalse,
}) {
  return kHeight(context) >= 760 && kHeight(context) <= 900
      ? valueIsTrue // small phone
      : valueIsFalse; // large phone
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
    return kWidthConditions(
      context,
      valueIsTrue: fontSizeLargeTrue, //small phone
      valueIsFalse: fontSizeLargeFalse, //large phone
    ); // large phone
  } else {
    return kWidthConditions(
      context,
      valueIsTrue: fontSizeSmallTrue, //small phone
      valueIsFalse: fontSizeSmallFalse, //large phone
    ); // small phone
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
    return kHeightConditions(
      context,
      valueIsTrue: fontSizeLargeTrue,
      valueIsFalse: fontSizeLargeFalse,
    ); // large phone
  } else {
    return kHeightConditions(
      context,
      valueIsTrue: fontSizeSmallTrue,
      valueIsFalse: fontSizeSmallFalse,
    ); // small phone
  }
}
