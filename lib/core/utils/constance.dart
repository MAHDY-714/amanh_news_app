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

const kNewsDescription =
    "At GE Appliances, we bring good things to life, by designing and building the world's best appliances. Our goal is to help people improve their lives at home by providing quality appliances that were made for real life. Whether it's enjoying the tradition of making meals from scratch or tackling a mountain of muddy jeans and soccer jerseys, GE Appliances are crafted to support any and every task in the home.";

const kNewsDate = "The earliest delivery date is May 24";
const kNewsCategoriesName = [
  'Technology',
  'Business',
  'Science',
  'Sport',
  'Health',
  'Entertainment',
  'General',
];
