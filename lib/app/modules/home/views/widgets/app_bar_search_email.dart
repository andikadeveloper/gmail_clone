import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gmail_clone/app/core/constants.dart';

class AppBarSearchEmail extends StatelessWidget {
  const AppBarSearchEmail({
    Key? key,
    required this.onSearchClick,
    required this.onProfileClick,
  }) : super(key: key);

  final Function() onSearchClick;
  final Function() onProfileClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          children: [
            // Menu button
            Builder(
              builder: (context) => IconButton(
                onPressed: () => Scaffold.of(context).openDrawer(),
                icon: Icon(
                  Icons.menu,
                  color: Colors.black87,
                ),
              ),
            ),
            // Search Email
            Expanded(
              child: TextField(
                onTap: onSearchClick,
                decoration: InputDecoration(
                  hintText: 'Search in mail',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.black54),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.all(0),
                ),
              ),
            ),
            // Profile
            GestureDetector(
              onTap: onProfileClick,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/profile.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
