import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// a boolean
final isDarkModeProvider = StateProvider<bool>((ref) => false);

// Listadop de colores inmutables
final colorsListProvider = Provider((ref) => colorList);

// Un simple init
final selectedColorProvider = StateProvider<int>((ref) => 0);
