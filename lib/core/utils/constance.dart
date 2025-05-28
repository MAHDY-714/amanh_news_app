import 'package:amanh_news_app/core/utils/cache_helper.dart';

const kAboutForNewsApp =
    "At GE Appliances, we bring good things to life, by designing and building the world's best appliances. Our goal is to help people improve their lives at home by providing quality appliances that were made for real life. Whether it's enjoying the tradition of making meals from scratch or tackling a mountain of muddy jeans and soccer jerseys, GE Appliances are crafted to support any and every task in the home.";
const kNewsTitle =
    'Amanh News: Your trusted source for breaking and reliable news. Stay up to date with the latest developments, delivered directly to your fingertips.';

const kNewsTitle2 =
    'College football notional championship score, Ohio State holds off Notre Dame to win title, 34-23 - Yahoo Sports';

const kNewsDate = 'Friday, February 7, 2025';

const kNewsCategoriesName = [
  'Technology',
  'Business',
  'Science',
  'Sports',
  'Health',
  'Entertainment',
  'World',
];

bool kMode = CacheHelper.getData(key: 'isMode') ?? false; // false as a default
int kCountryIndexItemSelected =
    CacheHelper.getData(key: 'countryIndex') ?? 0; // eg as a default
int kLanguageIndexItemSelected =
    CacheHelper.getData(key: 'languageIndex') ?? 0; // eg as a default
String kCountry =
    CacheHelper.getData(key: 'country') ?? 'wo'; // eg as a default
String kLanguage =
    CacheHelper.getData(key: 'language') ?? 'en'; // ar as a default

const kCountriesCode = [
  'wo', //   'World',
  'eg', //   'Egypt',
  'jo', //   'Jordan',
  'lb', //   'Lebanon',
  'ly', //   'Libya',
  'ma', //   'Morocco',
  // 'ps', // 'Palestine',
  'sa', //   'Saudi Arabia',
  'sy', //   'Syria',
  'tn', //   'Tunisia',
  'ae', //   'United Arab Emirates',
  'al', //   'Albania',
  'ar', // Argentina
  'au', //   'Australia',
  'ca', //   'Canada',
  'gb', //   'United Kingdom',
  'us', //   'United States of America',
  'br', //   'Brazil',
  // 'cf',  // 'Central African Republic',
  'fr', //   'France',
  'de', //   'Germany',
  'cn', //   'China',
  'gr', //   'Greece',
  'in', //   'India (ml 'Malayalam')',
  'IN', //   'India (hi 'Hindi')',
  'it', // Italy
  'jp', //   'Japan',
  'kr', //   'South Korea',
  'es', // Spain
  'ch', //   'Switzerland',
  'se', //   'Sweden',
  // 'kp',    // 'North Korea',
  'ru', //   'Russia',
  'tr', //   'Turkey',
  'th', // Thailand
  'ua', //   'Ukraine',
  // 'fi',   // 'Finland',
];
const kCountriesName = [
  'World',
  'Egypt',
  'Jordan',
  'Lebanon',
  'Libya',
  'Morocco',
  // 'Palestine',
  'Saudi Arabia',
  'Syria',
  'Tunisia',
  'United Arab Emirates',
  'Albania',
  'Argentina',
  'Australia',
  'Canada',
  'United Kingdom',
  'United States of America',
  'Brazil',
  // 'Central African Republic',
  'France',
  'Germany',
  'China',
  'Greece',
  'India (Malayalam)',
  'India (Hindi)',
  'Italy',
  'Japan',
  'South Korea',
  'Spain',
  'Switzerland',
  'Sweden',
  // 'North Korea',
  'Russia',
  'Turkey',
  'Thailand',
  'Ukraine',
  // 'Finland',
];
const kLanguagesCode = [
  'en', // world
  'ar', //Egypt
  'ar', //Jordan
  'ar', //Lebanon
  'ar', //Libya
  'ar', //Morocco
  // 'ar', //Palestine
  'ar', //Saudi Arabia
  'ar', //Syria
  'ar', //Tunisia
  'ar', //United Arab Emirates
  'sq', // Albania
  'es', // Argentina
  'en', // Australia
  'en', // Canada
  'en', // United Kingdom
  'en', // United States of America
  'pt', // Brazil
  // 'sg',Central African Republic
  'fr', // France
  'de', // Germany
  // 'sq', // Albania
  'zh', // China
  'el', // Greece
  'ml', // India (ml 'Malayalam')
  'hi', // India (hi 'Hindi')
  'it', // Italy
  'jp', // Japan
  'ko', // South Korea
  'es', // Spain
  'de', // Switzerland
  'sv', // Sweden
  // 'ko', // North Korea *
  'ru', // Russia
  'tr', // Turkey
  'th', // Thailand
  'uk', // Ukraine *
  // 'sv', // Finland
  // 'cy',
];
