import 'package:kunyomi/Application/ThemeSystem/theme_info.dart';
import 'package:kunyomi/Application/ThemeSystem/theme_holder.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApplicationPrefs {

  static final Future<SharedPreferences> _preferences = SharedPreferences.getInstance();

  static ThemeInfo get theme {
    String? themeName;
    _preferences.then((pref) {
       themeName = pref.getString('theme');
    });
    if (themeName == null) {
      theme = ThemeHolder.defaultTheme;
    }
    return ThemeHolder.getTheme(themeName!);
  }

  static set theme (ThemeInfo theme) =>
    _preferences.then((pref) => pref.setString('theme', theme.name));


}