import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// a boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Listadop de colores inmutables
final colorsListProvider = Provider((ref) => colorList);

// Un simple init
final selectedColorProvider = StateProvider<int>((ref) => 0);

// Object of type AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// It could  be named Notifier or Controller
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = Estado = new AppTheme()
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith(selectedColor: colorIndex);
  }
}
