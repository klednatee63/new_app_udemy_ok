import 'package:flutter/material.dart';
import 'package:new_app_udemy/dark_provider.dart';
import 'package:new_app_udemy/drawer_screen.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings_screen';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final DarkProvider darkProvider = Provider.of<DarkProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: DrawerScreen(),
      body: Container(
        color: darkProvider.darkMode
            ? Theme.of(context).primaryColorDark
            : Theme.of(context).colorScheme.secondary,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              darkProvider.darkMode
                  ? Text(
                      'Visibility option',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary),
                    )
                  : Text('Visibility option'),
/*               RaisedButton(
                onPressed: () {
                  darkProvider.setDarkMode();
                },
                child: darkProvider.darkMode
                    ? Text('Change to Normal mode')
                    : Text('Change to Dark mode'),
                color: Theme.of(context).primaryColor,
              ), */

              /* RaisedButton(
                color: Colors.red, // background
                textColor: Colors.white, // foreground
                onPressed: () { },
                child: Text('RaisedButton with custom foreground/background'),
              ), */

              ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //   primary: Colors.red, // background
                //   onPrimary: Colors.white, // foreground
                // ),
                onPressed: () {
                  darkProvider.setDarkMode();
                },
                child: Text('ElevatedButton with custom foreground/background'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
