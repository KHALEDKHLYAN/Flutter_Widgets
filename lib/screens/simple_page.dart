import 'package:flutter/material.dart';
import 'package:widgets_app_design/listview_builder.dart';

class MySimpleScreen extends StatelessWidget {
  const MySimpleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: const Text('My Simple Screen'),
          backgroundColor: Colors.blueGrey,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                accountEmail: Text('khaledkhlyan@gmail.com'),
                accountName: Text('KHALED_4Cus'),
                currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage('assets/sanaku.jpg'),
                ),
              ),
              buildListTile(Icons.home, 'Home', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ListViewBuilder();
                }));
              }),
              buildListTile(Icons.shopping_cart, 'shopping', () {}),
              buildListTile(Icons.favorite, 'Favorite', () {}),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Labels'),
              ),
              buildListTile(Icons.label, 'Red', () {}),
              buildListTile(Icons.label, 'Black', () {}),
              buildListTile(Icons.label, 'Green', () {}),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ListViewBuilder();
            }));
          },
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: const BottomAppBar(
          notchMargin: 5.0,
          height: 90.0,
          shape: CircularNotchedRectangle(),
          color: Colors.black87,
          // color: Colors.black,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                      Text(
                        "Shop",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                      Text(
                        "Fav",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      Text(
                        "Setting",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ]),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/2g0x.jpg',
                      width: 300.0,
                      height: 300.0,
                    ),
                  ),
                ],
              ),
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_half),
                Icon(Icons.star_half),
                Icon(Icons.star_outline),
                Icon(Icons.star_outline),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/2g0x.jpg',
                        width: 200,
                        height: 100,
                      ),
                      const Text('Kuroko'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/sanaku.jpg',
                        width: 200,
                        height: 100,
                      ),
                      const Text('Bleach anime'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/bleach.jpg',
                        width: 100,
                        height: 100,
                      ),
                      const Text('Bleach anime'),
                    ],
                  ),
                ],
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const ListViewBuilder();
                  }));
                },
                style:
                    OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
                child: Text(
                  'Submit Btn'.toUpperCase(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

ListTile buildListTile(IconData icon, String text, VoidCallback onTap) {
  return ListTile(
    leading: Icon(icon),
    title: Text(text),
    onTap: onTap,
  );
}
