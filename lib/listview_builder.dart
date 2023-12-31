import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<String> productd = ['Banana', 'Mango', 'Apple'];

  List<String> productdDetails = ['20kg', '68kg', '71kg'];

  List<int> productdPrice = [100, 150, 97];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // leading: const Icon(Icons.menu),
          title: const Text('ListView Builder'),
          backgroundColor: Colors.yellow,
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
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text('Shoping'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text('Favorites'),
                onTap: () {},
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Labels'),
              ),
              ListTile(
                leading: const Icon(Icons.label),
                title: const Text('Red'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.label),
                title: const Text('Black'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.label),
                title: const Text('Green'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: productd.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text(
                  productd[index][0],
                ),
              ),
              title: Text(productd[index]),
              subtitle: Text(productdDetails[index]),
              trailing: Text("KSH ${productdPrice[index]}"),
            );
          },
        ),
      ),
    );
  }
}
