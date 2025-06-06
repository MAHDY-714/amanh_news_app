import 'dart:developer';
import 'package:amanh_news_app/Features/screens/presentation/manager/search_cubit/search_cubit.dart';
import 'package:amanh_news_app/core/styles/decorations.dart';
import 'package:amanh_news_app/core/styles/themes/theme%20styles/input_decoration_theme.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.cubi,
    required this.formKey,
  });
  final SearchCubit cubi;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: cubi.searchTextController,
      style: InputDecorationThemeApp.themeFormFieldStyle(context),
      // selectionHeightStyle: BoxHeightStyle.includeLineSpacingBottom,
      decoration: Decorations.inputFormFieldDecoration(context),
      autocorrect: true,
      enableSuggestions: true,
      textDirection: cubi.textDirection,
      textInputAction: TextInputAction.search,
      keyboardType: TextInputType.text,

      onChanged: (value) {
        log(value.toString());
        log(cubi.searchTextController.text.toString());
        if (value != '') {
          cubi.textDirections(cubi.searchTextController.text);
        }
      },
      onFieldSubmitted: (value) {
        log(value.toString());
        cubi.searchTextController.text = value;
        log(cubi.searchTextController.text.toString());
        if (cubi.searchTextController.text != '') {
          cubi.getSearchNewsData(qValue: value);
        }
      },
    );
  }
}
