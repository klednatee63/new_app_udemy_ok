import 'package:flutter/material.dart';
import 'package:new_app_udemy/dark_provider.dart';
import 'package:new_app_udemy/main.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = '/details_screen';

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final DarkProvider darkProvider = Provider.of<DarkProvider>(context);
    final device = MediaQuery.of(context).size;
    final hotel = ModalRoute.of(context)!.settings.arguments as Hotel;
    return Scaffold(
      appBar: AppBar(
        title: Text(hotel.name),
      ),
      body: Container(
        height: device.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  child: Image.network(
                    hotel.image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: darkProvider.darkMode
                      ? Theme.of(context).primaryColorDark
                      : Colors.black26,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Theme.of(context).colorScheme.secondary),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Rating: ',
                              style: TextStyle(fontSize: 18),
                            ),
                            hotel.rating >= 1
                                ? Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            hotel.rating >= 2
                                ? Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            hotel.rating >= 3
                                ? Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            hotel.rating >= 4
                                ? Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            hotel.rating >= 5
                                ? Icon(Icons.star,
                                    color: Theme.of(context).primaryColor)
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: Text(
                          hotel.price.toString() + ' \$',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(parent: null),
                          itemBuilder: (context, item) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              hotel.description[item],
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          itemCount: hotel.description.length,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
