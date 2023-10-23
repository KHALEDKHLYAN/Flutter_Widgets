import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListTileWidget extends StatefulWidget {

  String title, subTitle;
  IconData leadingIcon, trailingIcon;
  Color? listTileColor, iconColor;

  ListTileWidget({super.key, 
    required this.title,
    required this.subTitle,
    this.leadingIcon = Icons.label,
    this.trailingIcon = Icons.add_shopping_cart  ,
    this.listTileColor,
    this.iconColor,
  });

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: widget.listTileColor,
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              width: 1.0,
              color: Colors.redAccent,
            )),
        leading: IconButton(
          onPressed: () {},
          icon:  Icon(widget.leadingIcon),
          color: Colors.blue,
        ),
        title:  Text(
          widget.title,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.bold),
        ),
        subtitle: Text(widget.subTitle),
        trailing: IconButton(
            onPressed: () {}, icon:  Icon(widget.trailingIcon)),
      ),
    );
  }
}
