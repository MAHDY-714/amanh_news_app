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
    CacheHelper.getData(key: 'countryIndex') ?? 1; // eg as a default
String kCountry =
    CacheHelper.getData(key: 'country') ?? 'eg'; // eg as a default
String kLanguage =
    CacheHelper.getData(key: 'language') ?? 'en'; // ar as a default

const kCountriesCode = <String>[
  'wo',
  'eg',
  'jo',
  'lb',
  'ly',
  'ma',
  // 'ps',
  'sa',
  'sy',
  'tn',
  'ae',
  'au',
  'ca',
  'gb',
  'us',
  'br',
  'cf',
  'fr',
  'de',
  'se',
  'cn',
  'gr',
  'in',
  'jp',
  'kr',
  'kp',
  'ru',
  'ua',
  'fi',
];
const kCountriesName = <String>[
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
  'Australia',
  'Canada',
  'United Kingdom',
  'United States of America',
  'Brazil',
  'Central African Republic',
  'France',
  'Germany',
  'Sweden',
  'China',
  'Greece',
  'India',
  'Japan',
  'South Korea',
  'North Korea',
  'Russia',
  'Ukraine',
  'Finland',
];

const kListCountries = [
  'EG',
  'US',
  'WO',
];
const kListLanguage = [
  'AR',
  'EN',
  'WO',
];

String kCountryFlag({required String countryFlagEmoji}) {
  int flagOffset = 0x1F1E6;
  int asciiOffset = 0x41;

  String country = countryFlagEmoji; // Example country code

  int firstChar = country.codeUnitAt(0) - asciiOffset + flagOffset;
  int secondChar = country.codeUnitAt(1) - asciiOffset + flagOffset;

  String flag =
      String.fromCharCode(firstChar) + String.fromCharCode(secondChar);
  return flag;
}
 /*
 'eg',
'jo',
'lb',
'ly',
'ma',
'ps',
'sa',
'sy',
'tn',
'ae',
'au',
'ca',
'gb',
'us',
'br',
'cf',
'fr',
'de',
'se',
'cn',
'gr',
'in',
'jp',
'kr',
'kp',
'ru',
'ua',
'fi',

  */