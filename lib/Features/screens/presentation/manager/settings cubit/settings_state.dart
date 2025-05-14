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

final class ChangeThemeModeSettingsState extends SettingsState {}
