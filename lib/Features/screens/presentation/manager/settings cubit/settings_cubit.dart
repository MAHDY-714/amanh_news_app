import 'dart:developer';

import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/about_for_app_body.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/news_countries_list_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/news_language_list.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/change%20theme/row_for_chose_theme_builder.dart';
import 'package:amanh_news_app/core/utils/cache_helper.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
  final List<Widget> listBodyContent = [
    const RowForChoseThemeBuilder(),
    const NewsCountriesList(),
    const NewsLanguageList(),
    const AboutForAppBody(),
  ];
  Widget currentContent = const RowForChoseThemeBuilder();
  int indexItem = 0;
  void changeThemeApp(context, {required bool isMode}) {
    log('the cubit for Setting started');
    if (isMode) {
      kMode = isMode;
      emit(ChangeThemeToDarkModeSettingsState());
      CacheHelper.saveData(key: 'isMode', value: kMode); // dark mode
      log('the mode is dark $isMode');
    } else {
      kMode = isMode;
      emit(ChangeThemeToLightModeSettingsState());
      CacheHelper.saveData(key: 'isMode', value: kMode); // light mode
      log('the mode is light $isMode');
    }
    Cubits.homeCubit(context).changeThemeHome(
      context,
      mode: kMode,
      index: Cubits.homeCubit(context).currentCategory,
    );
  }

  void openSettingsItemContent(
    context, {
    required int index,
  }) {
    indexItem = index;
    log('the indexItem is $indexItem');
    log('the index is $index');
    switch (indexItem) {
      case 0:
        currentContent = listBodyContent[indexItem];
        emit(OpenSettingsItemModeContentState());

        break;
      case 1:
        currentContent = listBodyContent[indexItem];
        emit(OpenSettingsItemCountryContentState());

        break;
      case 2:
        currentContent = listBodyContent[indexItem];
        emit(OpenSettingsItemLanguageContentState());

        break;
      case 3:
        currentContent = listBodyContent[indexItem];
        emit(OpenSettingsItemAboutContentState());
        break;
    }
  }
}
