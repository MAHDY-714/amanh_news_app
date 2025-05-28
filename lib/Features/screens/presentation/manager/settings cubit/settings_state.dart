part of 'settings_cubit.dart';

sealed class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

final class SettingsInitial extends SettingsState {}

final class ChangeThemeToDarkModeSettingsState extends SettingsState {
  final bool mode;
  ChangeThemeToDarkModeSettingsState({this.mode = true});
}

final class ChangeThemeToLightModeSettingsState extends SettingsState {
  final bool mode;
  ChangeThemeToLightModeSettingsState({this.mode = false});
}

final class OpenSettingsItemModeContentState extends SettingsState {}

final class OpenSettingsItemCountryContentState extends SettingsState {}

final class OpenSettingsItemLanguageContentState extends SettingsState {}

final class OpenSettingsItemAboutContentState extends SettingsState {}

final class ChangeCountryNewsState extends SettingsState {}

final class LoadingChangeCountryIconAndColorState extends SettingsState {}

final class ChangeCountryIconAndColorState extends SettingsState {}

final class ChangeLanguageNewsState extends SettingsState {}

final class LoadingChangeLanguageIconAndColorState extends SettingsState {}

final class ChangeLanguageIconAndColorState extends SettingsState {}
