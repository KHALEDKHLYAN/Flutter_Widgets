import 'package:flutter/material.dart';


class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: Colors.black26,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              width: 1.0,
              color: Colors.redAccent,
            )),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.mouse_outlined),
          color: Colors.blue,
        ),
        title: const Text(
          'Mouse',
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.bold),
        ),
        subtitle: const Text('4Cm HPModel'),
        trailing: IconButton(
            onPressed: () {}, icon: const Icon(Icons.shop_outlined)),
      ),
    );
  }
}
