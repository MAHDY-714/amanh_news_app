import 'package:flutter/material.dart';

class CountryFlagIcon extends StatelessWidget {
  const CountryFlagIcon({
    super.key,
    required this.countryCode,
    this.fontSize,
  });

  final String countryCode;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      '${_countryFlag(countryFlagEmoji: countryCode.toUpperCase())}',
      style: TextStyle(
        fontSize: fontSize ?? 12.0,
      ),
    );
  }
}

String _countryFlag({required String countryFlagEmoji}) {
  int flagOffset = 0x1F1E6;
  int asciiOffset = 0x41;
  String country = countryFlagEmoji; // Example country code
  int firstChar = country.codeUnitAt(0) - asciiOffset + flagOffset;
  int secondChar = country.codeUnitAt(1) - asciiOffset + flagOffset;
  String flag =
      String.fromCharCode(firstChar) + String.fromCharCode(secondChar);
  return flag;
}
