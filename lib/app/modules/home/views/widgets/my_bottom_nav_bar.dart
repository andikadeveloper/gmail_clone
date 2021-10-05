import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.1,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0.3),
            blurRadius: 0.1,
            color: Colors.grey,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              Positioned(
                right: 3,
                top: 3,
                child: Container(
                  height: 15,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '99+',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Icon(Icons.mail),
                    Text('Mail'),
                  ],
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Column(
              children: [
                Icon(
                  Icons.videocam_outlined,
                  color: Colors.grey[600],
                ),
                Text(
                  'Meet',
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
