part of 'settings_cubit.dart';

sealed class SettingsState extends Equatable {
  const SettingsState();

  @override
  List<Object> get props => [];
}

final class SettingsInitial extends SettingsState {}

final class ChangeThemeToDarkModeSettingsState extends SettingsState {}

final class ChangeThemeToLightModeSettingsState extends SettingsState {}

final class ChangeThemeModeSettingsState extends SettingsState {}
