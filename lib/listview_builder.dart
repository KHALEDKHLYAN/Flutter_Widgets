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
              DrawerHeader(child: Container(color: Colors.blue,),),
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
