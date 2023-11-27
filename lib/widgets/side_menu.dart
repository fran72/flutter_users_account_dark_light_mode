import 'package:flutter/material.dart';
import 'package:flutter_app_cap10/screens/screens.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: Colors.purple,
            ),
            title: const Text('Home screen',
                style: TextStyle(color: Colors.purple, fontSize: 18)),
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.routerName);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.purple,
            ),
            title: const Text('Settings screen',
                style: TextStyle(color: Colors.purple, fontSize: 18)),
            onTap: () {
              Navigator.pushNamed(context, SettingsScreen.routerName);
            },
          )
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/menu-img.jpg'),
        ),
      ),
      child: Container(),
    );
  }
}
