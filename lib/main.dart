import 'package:flutter/material.dart';
import 'package:the_mall/home.dart';
import 'package:the_mall/food.dart';
import 'package:the_mall/events.dart';
import 'package:the_mall/shopping.dart';
import 'package:the_mall/aboutus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Mall',
      theme: ThemeData(
        primaryColor: Color(0xFF000000),
        accentColor: Color(0xFF3F51B5),

      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _seletedItem = 0;
  var _pages = [HomePage(),FoodPage(),ShopPage(),EventsPage(),AboutUsPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text('The Mall'),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Sameer Thakur'),
              accountEmail: Text('sameerthakur@gmail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.person, color: Colors.white,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.black
            ),
            ),
          InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => HomePage()
              ));
            },
            child: ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => FoodPage()
              ));
            },
            child: ListTile(
              title: Text('Restaurants'),
              leading: Icon(Icons.fastfood),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => ShopPage()
              ));
            },
            child: ListTile(
              title: Text('Shops'),
              leading: Icon(Icons.shopping_bag),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                  builder: (context) => EventsPage()
              ));
            },
            child: ListTile(
              title: Text('Events'),
              leading: Icon(Icons.event),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => AboutUsPage()
              ));
            },
            child: ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.work),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                 builder: (context) => AboutUsPage()
              ));
            },
            child: ListTile(
              title: Text('Login'),
              leading: Icon(Icons.work),
           ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => AboutUsPage()
              ));
            },
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, new MaterialPageRoute(
                builder: (context) => AboutUsPage( )
              ));
            },
          )
          ],
        ),
      ),
      body: Center(child: _pages[_seletedItem]),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.fastfood), title: Text('Resttaurants')),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), title: Text('Shops')),
          BottomNavigationBarItem(icon: Icon(Icons.event), title: Text('Events'))
        ],
        currentIndex: _seletedItem,
        onTap: (index){
          setState(() {
            _seletedItem = index;
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}