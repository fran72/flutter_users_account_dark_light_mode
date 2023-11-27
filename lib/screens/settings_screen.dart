import 'package:flutter/material.dart';
import 'package:flutter_app_cap10/share_preferences/preferences.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';
import '../widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool isDarkMode = false;
  // int gender = 2;
  // String name = 'Fran';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Text('Ajustes'),
                    const Divider(thickness: 0.6),
                    SwitchListTile.adaptive(
                        title: const Text('Is dark mode?'),
                        value: Preferences.isDarkMode,
                        onChanged: (value) {
                          Preferences.isDarkMode = value;
                          final themeProvider = Provider.of<ThemeProvider>(
                              context,
                              listen: false);
                          value
                              ? themeProvider.setDarkMode()
                              : themeProvider.setLightMode();
                          setState(() {});
                        }),
                    const Divider(thickness: 0.6),
                    RadioListTile.adaptive(
                      value: 1,
                      groupValue: Preferences.gender,
                      title: const Text('masculino'),
                      onChanged: (value) {
                        Preferences.gender = value ?? 1;
                        setState(() {});
                      },
                    ),
                    RadioListTile.adaptive(
                      value: 2,
                      groupValue: Preferences.gender,
                      title: const Text('femenino'),
                      onChanged: (value) {
                        Preferences.gender = value ?? 2;
                        setState(() {});
                      },
                    ),
                    const Divider(thickness: 0.6),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: TextFormField(
                        initialValue: Preferences.name,
                        decoration: const InputDecoration(
                          labelText: 'nombre',
                          helperText: 'nombre de usuario',
                        ),
                        onChanged: (value) {
                          Preferences.name = value;
                          setState(() {});
                        },
                      ),
                    ),
                    const Divider(thickness: 0.6),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
