import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

// My Own Import
import 'package:first_flutter_app/components/horizontal_listview.dart';
import 'package:first_flutter_app/components/product.dart';

void main() {
  runApp(new MaterialApp(
    title: "B's Application",
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = new Container(
      height: 200.0,
      child: new Carousel( 
        images: [ 
          AssetImage('images/bp2.png'),
          AssetImage('images/d1.png'), 
          AssetImage('images/f.png')
        ],
        boxFit: BoxFit.cover, 
        autoplay: false,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.purple,
        title: Text('Bisi Application'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.shopping_basket), onPressed: () {}),
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),

      // set drawer
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // header in drawer
            new UserAccountsDrawerHeader(
              accountName: Text('Fikayomi Abisola'),
              accountEmail: Text('fikayomiAbisola@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.purple),
            ),

            // drawer body
            InkWell(
              child: new ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home,  color: Colors.purple),
              ),
              onTap: () {},
            ), 

            InkWell(
              child: new ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person, color: Colors.purple),
              ),
              onTap: () {},
            ),
            
            InkWell(
              child: new ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,  color: Colors.purple),
              ),
              onTap: () {},
            ),

            InkWell(
              child: new ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.category, color: Colors.purple,),
              ),
              onTap: () {},
            ),
            
            InkWell(
              child: new ListTile(
                title: Text('Favourite'),
                leading: Icon(Icons.favorite, color: Colors.purple),
              ),
              onTap: () {},
            ),

            Divider(),

            InkWell(
              child: new ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
              ),
              onTap: () {},
            ),

            InkWell(
              child: new ListTile(
                title: Text('About'),
                leading: Icon(Icons.help),
              ),
              onTap: () {},
            )

          ],
        ),
      ),

      // set body changes here
      body: new ListView( 
        children: <Widget>[
          // image carousel begins here
          imageCarousel,

          // padding section
          new Padding(padding: const EdgeInsets.all(8.0), child: new Text("Categories"),), 

          // Horizontal list view begins here
          HorizontalList(),

           // padding section
          new Padding(padding: const EdgeInsets.all(10.6), child: new Text("Recent Products"),), 

          // grid View
          Container(
            height: 280.0,
            child: Products(),
          )
        ], 
      ),
    );
  }
}
