import 'package:amanh_news_app/core/utils/cache_helper.dart';

const kNewsDescription =
    "At GE Appliances, we bring good things to life, by designing and building the world's best appliances. Our goal is to help people improve their lives at home by providing quality appliances that were made for real life. Whether it's enjoying the tradition of making meals from scratch or tackling a mountain of muddy jeans and soccer jerseys, GE Appliances are crafted to support any and every task in the home.";
const kNewsTitle =
    'Amanh News: Your trusted source for breaking and reliable news. Stay up to date with the latest developments, delivered directly to your fingertips.';

const kNewsTitle2 =
    "College football notional championship score, Ohio State holds off Notre Dame to win title, 34-23 - Yahoo Sports";

const kNewsDate = "Friday, February 7, 2025";
const kNewsCategoriesName = [
  'Technology',
  'Business',
  'Science',
  'Sports',
  'Health',
  'Entertainment',
  'World',
];

bool kMode = CacheHelper.getData(key: 'isMode') ?? false; // false by default
