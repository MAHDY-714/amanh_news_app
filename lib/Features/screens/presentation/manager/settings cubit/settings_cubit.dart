import 'dart:developer';

import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/about_for_app_body.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/news_countries_list_view.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/body%20content/news_language_list.dart';
import 'package:amanh_news_app/Features/screens/presentation/views/settings/widget/change%20theme/row_for_chose_theme_builder.dart';
import 'package:amanh_news_app/core/styles/app_colors.dart';
import 'package:amanh_news_app/core/styles/themes/theme_app.dart';
import 'package:amanh_news_app/core/utils/cache_helper.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:amanh_news_app/core/utils/cubit_objects.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';

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
  List<String> listCountries = [
    kCountriesCode[kCountryIndexItemSelected],
    'eg',
    'us',
  ];
  List<String> listLanguage = [
    kLanguagesCode[kCountryIndexItemSelected],
    'AR',
    'EN',
  ];
  static const _iconSelect = TablerIcons.square_rounded_check;
  static const _iconUnSelect = TablerIcons.square_rounded;
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
    Cubits.home(context).changeThemeHome(
      context,
      mode: kMode,
      index: Cubits.home(context).currentCategory,
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

  //*!Change Country & iconData & color icon
  void changeCountryNews(context, {required int index}) {
    kCountryIndexItemSelected = index;
    kCountry = kCountriesCode[kCountryIndexItemSelected];
    kLanguage = kLanguageIndexItemSelected == 0
        ? kLanguagesCode[kCountryIndexItemSelected]
        : listLanguage[kLanguageIndexItemSelected];
    CacheHelper.saveData(key: 'country', value: kCountry);
    CacheHelper.saveData(key: 'countryIndex', value: kCountryIndexItemSelected);
    CacheHelper.saveData(key: 'language', value: kLanguage);
    log('the kCountry is $kCountry');
    log('the kLanguage is $kLanguage');
    log('kCountriesName = ${kCountriesName.length}');
    log('kCountriesCode = ${kCountriesCode.length}');
    log('kLanguagesCode = ${kLanguagesCode.length}');
    changeIconAndColorInCountryCheckBox(context,
        index: kCountryIndexItemSelected);
  }

  void changeIconAndColorInCountryCheckBox(context, {required int index}) {
    emit(LoadingChangeCountryIconAndColorState());
    selectCountryColor(context, index: index);
    selectCountryIcon(index: index);
    emit(ChangeCountryIconAndColorState());
  }

  Color selectCountryColor(context, {required int index}) {
    return kCountriesCode[kCountryIndexItemSelected] == kCountriesCode[index]
        ? AppColor.greenDeep
        : ThemeApp.iconInSettingsColorThemeApp(context);
  }

  IconData selectCountryIcon({required int index}) {
    return kCountriesCode[kCountryIndexItemSelected] == kCountriesCode[index]
        ? _iconSelect
        : _iconUnSelect;
  }

  //*!Change Language & iconData & color icon & language Flag & language name
  void changeLanguageNews(context, {required int index}) {
    emit(ChangeLanguageNewsState());
    kLanguageIndexItemSelected = index;
    kLanguage = kLanguageIndexItemSelected == 0
        ? kLanguagesCode[kCountryIndexItemSelected]
        : listLanguage[kLanguageIndexItemSelected];
    CacheHelper.saveData(key: 'language', value: kLanguage);
    CacheHelper.saveData(key: 'languageIndex', value: index);
    log('the kLanguage is $kLanguage');
    log('kCountryIndexItemSelected $kCountryIndexItemSelected');
    log('the language index  is select $kLanguageIndexItemSelected');
    log('the language index is $index');

    changeIconAndColorInLanguageCheckBox(context,
        index: kLanguageIndexItemSelected);
  }

  void changeIconAndColorInLanguageCheckBox(context, {required int index}) {
    emit(LoadingChangeLanguageIconAndColorState());
    // kLanguage = index == 0
    //     ? kLanguagesCode[kCountryIndexItemSelected]
    //     :
    kLanguage = listLanguage[index];
    CacheHelper.saveData(key: 'language', value: kLanguage);
    selectLanguageColor(context, index: index);
    selectLanguageIcon(index: index);
    selectLanguageName(index: index);
    selectLanguageFlag(index: index);
    emit(ChangeLanguageIconAndColorState());
  }

  Color selectLanguageColor(context, {required int index}) {
    return listLanguage[kLanguageIndexItemSelected] == listLanguage[index]
        ? AppColor.greenDeep
        : ThemeApp.iconInSettingsColorThemeApp(context);
  }

  IconData selectLanguageIcon({required int index}) {
    return listLanguage[kLanguageIndexItemSelected] == listLanguage[index]
        ? _iconSelect
        : _iconUnSelect;
  }

  String selectLanguageName({required int index}) {
    if (index == 0) {
      return kLanguagesCode[kCountryIndexItemSelected];
      // return kLanguage;
    } else
      return listLanguage[index];
  }

  String selectLanguageFlag({required int index}) {
    if (index == 0) {
      return kCountry;
    } else
      return listCountries[index];
  }
}
