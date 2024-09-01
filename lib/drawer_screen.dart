import 'package:flutter/material.dart';
import 'package:new_app_udemy/dark_provider.dart';
import 'package:new_app_udemy/hotels_page.dart';
import 'package:new_app_udemy/main.dart';
import 'package:new_app_udemy/settings_screen.dart';
import 'package:provider/provider.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DarkProvider darkProvider = Provider.of<DarkProvider>(context);
    return Drawer(
      child: Container(
        color: darkProvider.darkMode
            ? Theme.of(context).primaryColorDark
            : Theme.of(context).colorScheme.secondary,
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Hotel App'),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              title: Text(
                'Hotels',
                style: TextStyle(
                  color: darkProvider.darkMode
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).primaryColorDark,
                ),
              ),
              leading: Icon(
                Icons.hotel,
                color: darkProvider.darkMode
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).primaryColorDark,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(HotelsPage.routeName);
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                  color: darkProvider.darkMode
                      ? Theme.of(context).colorScheme.secondary
                      : Theme.of(context).primaryColorDark,
                ),
              ),
              leading: Icon(
                Icons.settings,
                color: darkProvider.darkMode
                    ? Theme.of(context).colorScheme.secondary
                    : Theme.of(context).primaryColorDark,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(SettingsScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
