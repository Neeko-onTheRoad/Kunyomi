import 'package:kunyomi/Application/ThemeSystem/theme_info.dart';

class ThemeHolder {

  // fields

  static ThemeInfo _defaultTheme;
  static List<String> _keys = [];
  static Map<String, ThemeInfo> _themes = { 'default': _defaultTheme };

  // properties

  static ThemeInfo get defaultTheme => _defaultTheme;

  static Iterable<String> get names => _keys;

  // methods

  static addTheme(ThemeInfo theme) {
    _themes[theme.name] = theme;
    _keys.add(theme.name);
  }

  static getTheme(String name) => _themes[name];

}