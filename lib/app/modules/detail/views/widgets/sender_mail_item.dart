import 'dart:math';

import 'package:flutter/material.dart';

class SenderMailItem extends StatelessWidget {
  const SenderMailItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        child: Text(
          'L'.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(
          255,
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256),
        ),
      ),
      title: Row(
        children: [
          Text('Lionel Messi'),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              'Yesterday',
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey[700],
              ),
            ),
          )
        ],
      ),
      subtitle: Row(
        children: [
          Text('To me'),
          Icon(
            Icons.keyboard_arrow_down_sharp,
            color: Colors.black54,
          )
        ],
      ),
      trailing: Icon(Icons.more_vert),
    );
  }
}
