import 'dart:developer';

import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/about_for_app_body.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/news_countries_list_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/news_language_list.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/change%20theme/row_for_chose_theme_builder.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
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
  // int countryIndexItemSelected = 0;

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

  void changeCountryNews(context, {required int index}) {
    kCountryIndexItemSelected = index;
    kCountry = kCountriesCode[kCountryIndexItemSelected];
    // country = kCountriesCode[index];
    CacheHelper.saveData(key: 'country', value: kCountry);
    CacheHelper.saveData(key: 'countryIndex', value: index);
    log('the kCountry is $kCountry');
    log('the country index  is select $kCountryIndexItemSelected');
    log('the country index is $index');

    // log('the country is $country');
    ChangeIconAndColorInSettings(index: index);
  }

  Color selectCountryColor({required int index}) {
    emit(ChangeCountryNewsState());
    return kCountriesCode[kCountryIndexItemSelected] == kCountriesCode[index]
        ? AppColor.greenDeep
        : AppColor.white38;
  }

  IconData selectCountryIcon({required int index}) {
    emit(ChangeCountryNewsState());
    return kCountriesCode[kCountryIndexItemSelected] == kCountriesCode[index]
        ? Icons.check_circle_sharp
        : Icons.circle;
  }

  void ChangeIconAndColorInSettings({required int index}) {
    selectCountryColor(index: index);
    selectCountryIcon(index: index);
    emit(ChangeIconAndColorState());
  }
}
