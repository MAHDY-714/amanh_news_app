import 'package:amanh_news_app/core/styles/decorations.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/input_decoration_theme.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: InputDecorationThemeApp.themeFormFieldStyle(context),
      // selectionHeightStyle: BoxHeightStyle.includeLineSpacingBottom,

      decoration: Decorations.InputFormFieldDecoration(context),
    );
  }
}
