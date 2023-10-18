import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text('Flutter layout demo'),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.book_online_sharp),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            const Row(children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.start),
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
          ],
        ),
      ),
    );
  }
}
