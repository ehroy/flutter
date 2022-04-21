import 'package:flutter/material.dart' ;//show AppBar, BottomNavigationBar, BottomNavigationBarItem, BoxDecoration, BuildContext, Center, Colors, Drawer, DrawerHeader, FloatingActionButton, FontWeight, Icon, IconButton, Icons, InkWell, Key, ListTile, ListView, MaterialApp, MaterialPageRoute, Navigator, Scaffold, ScaffoldMessenger, SnackBar, State, StatefulWidget, StatelessWidget, Text, TextStyle, Widget, runApp;
import 'listview.dart';
import 'listcontainer.dart';
import 'imagenetwork.dart';
import 'imageassets.dart';
import 'rowcoloms.dart';

 void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp (
      debugShowCheckedModeBanner: false,
      home : MyStatefulWidget(),
      title: 'Fluter Basic Widgert',
    );
  }
}
class Homepage extends StatelessWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text("Menu Pertama"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Menu Kedua"),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Menu Ketiga"),
              onTap: () {},
            )
          ],
        ),
      ),
      appBar: AppBar(
        leading: InkWell(child: const Icon(Icons.menu), onTap: (){}),
        title: const Text('App Demo'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: "Show Snackbar",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a Snackbar'))
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Next Page'),
                      ),
                      body:  const  Center(
                        child: Text(
                          'this is next page',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                  }
              ));
            },
          )
        ],
      ),
      
      body: const Center(
        child: Text('Hello word'),
      ),
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({ Key? key }) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
    TextStyle(fontSize: 30,fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget> [
    Text(
      "index 0 : Home",
      style: optionStyle,
    ),
    Text(
      "index 1 : Buiness",
      style: optionStyle,
    ),
    Text(
      "index 2 : Scholl",
      style: optionStyle,
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text("Menu ListView"),
              onTap: () {
                 Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const Listcolor()),
                 );
              },
            ),
            ListTile(
              title: const Text("Menu Container"),
              onTap: () {
                 Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const Containers()),
                 );
              },
            ),
            ListTile(
              title: const Text("Menu Networking Image"),
              onTap: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const ImageAsset()),
                 );
              },
            ),
            ListTile(
              title: const Text("Menu Image Assets"),
              onTap: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const Homeassets()),
                 );
              },
            ),
            ListTile(
              title: const Text("Menu Row Coloms"),
              onTap: () {
                Navigator.push(context,
                 MaterialPageRoute(builder: (context) => const Rowcoloms()),
                 );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Bottom Navigation Sample"),
        // leading: InkWell(child: const Icon(Icons.menu), onTap: (){}),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: "Show Snackbar",
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a Snackbar'))
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(
                        title: const Text('Next Page'),
                      ),
                      body:  const  Center(
                        child: Text(
                          'this is next page',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    );
                  }
              ));
            },
          )
        ],
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home',
          ),
           BottomNavigationBarItem(icon: Icon(Icons.business),
          label: 'Bussines',
          ),
           BottomNavigationBarItem(icon: Icon(Icons.school),
          label: 'Scholl',
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped, 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Anda klik centang"),
            duration: Duration(seconds: 1),
          ));
        },
        child: const Text("data"),
        
        
      ),
    );
  }
}

