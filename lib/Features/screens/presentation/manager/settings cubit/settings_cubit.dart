import 'dart:developer';

import 'package:amanh_news_app/core/utils/cache_helper.dart';
import 'package:amanh_news_app/core/utils/constance.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial());
  void changeThemeApp({required bool isMode}) {
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
    emit(ChangeThemeModeSettingsState());
  }
}
