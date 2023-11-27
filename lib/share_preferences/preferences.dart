import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  // Obtain shared preferences.
  static late SharedPreferences _prefs;

  static bool _isDarkMode = false;
  static int _gender = 1;
  static String _name = 'Fran';

  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get name {
    return _prefs.getString('name') ?? _name;
  }

  static set name(String valor) {
    _name = valor;
    _prefs.setString('name', valor);
  }

  static bool get isDarkMode {
    return _isDarkMode;
  }

  static set isDarkMode(bool valor) {
    _isDarkMode = valor;
    _prefs.setBool('isDarkMode', valor);
  }

  static int get gender {
    return _prefs.getInt('gender') ?? _gender;
  }

  static set gender(int valor) {
    _gender = valor;
    _prefs.setInt('gender', valor);
  }
}
