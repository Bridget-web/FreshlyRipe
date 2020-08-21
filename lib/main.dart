import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//void main() => runApp(MyApp());

//class MyApp extends StatelessWidget {
// final appTitle = 'Freshly Ripe';

//@override

//Widget build(BuildContext context) {

// return MaterialApp(
// title: appTitle,
//home: MyHomePage(title: appTitle),
//);
//}
//}

//class MyHomePage extends StatelessWidget {
//final String title;

//MyHomePage({Key key, this.title}) : super(key: key);

// @override
void main() => runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Freshly Ripe',
          home: HomePage()),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Carousel(
      images: [
        new NetworkImage('assets/images/1.jpg'),
        new NetworkImage('assets/images/2.jpg'),
        new NetworkImage('assets/images/3.jpg'),
       new NetworkImage('assets/images/4.jpg'),
        new NetworkImage('assets/images/5.jpg'),
      ],
    );
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageSliderCarousel = Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.fill,
        images: [
          AssetImage('assets/images/1.jpg'),
          AssetImage('assets/images/2.jpg'),
          AssetImage('assets/images/3.jpg'),
          AssetImage('assets/images/4.jpg'),
          AssetImage('assets/images/5.jpg'),
        ],
        autoplay: true,
        indicatorBgPadding: 1.0,
      ),
    );
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Text(
              'FRESHLY RIPE',
              style: TextStyle(color: Colors.black),
            ),
            actions: <Widget>[
              // ignore: missing_required_param
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.lightGreen,
                ),
              )
            ]),
        drawer: Drawer(
          child: Container(
            color: Colors.yellow,

            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/drawer.jpg"),
                          fit: BoxFit.cover)),
                  child: Text('FRESHLY RIPE'),
                  // decoration: BoxDecoration(
                  // color: Colors.yellow,
                  // ),
                ),
                ListTile(
                  title: Text('Home'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('My Account'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Shopping cart'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Wish List'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('News Letter'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Contact Us'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Customer Service'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Extras'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('login'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  title: Text('Register'),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

