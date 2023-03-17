import 'package:buttons_app/config/theme/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = StateProvider((ref) => false);

// listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);
final selectedColorProvider = StateProvider((ref) => 0);
