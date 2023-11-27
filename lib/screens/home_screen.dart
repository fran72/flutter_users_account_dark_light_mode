import 'package:flutter/material.dart';
import 'package:flutter_app_cap10/share_preferences/preferences.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.purple,
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkmode: ${Preferences.isDarkMode}'),
          const Divider(thickness: 0.6, indent: 40, endIndent: 40),
          Text('Genero ${Preferences.gender}'),
          const Divider(thickness: 0.6, indent: 40, endIndent: 40),
          Text('Nombre de usuario ${Preferences.name}'),
          const Divider(thickness: 0.6, indent: 40, endIndent: 40),
        ],
      ),
    );
  }
}
