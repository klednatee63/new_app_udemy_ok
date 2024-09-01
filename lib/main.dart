import 'package:flutter/material.dart';
import 'package:new_app_udemy/dark_provider.dart';
import 'package:new_app_udemy/details_screen.dart';
import 'package:new_app_udemy/hotels_page.dart';
import 'package:new_app_udemy/settings_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  static const routeName = '/my_app';
  @override
  _MyAppState createState() => _MyAppState();
}

class Hotel {
  String name;
  int rating;
  List<String> description;
  int price;
  String image;

  Hotel({
    // @required this.name,
    // @required this.rating,
    // @required this.description,
    // @required this.price,
    // @required this.image,
    required this.name,
    required this.rating,
    required this.description,
    required this.price,
    required this.image,
  });
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<DarkProvider>.value(
      value: DarkProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: Colors.orange,
            hintColor: Colors.white,
            primaryColorDark: Colors.black87),
        home: HotelsPage(),
        routes: {
          MyApp.routeName: (context) => MyApp(),
          DetailsScreen.routeName: (context) => DetailsScreen(),
          SettingsScreen.routeName: (context) => SettingsScreen(),
          HotelsPage.routeName: (context) => HotelsPage(),
        },
      ),
    );
  }
}
