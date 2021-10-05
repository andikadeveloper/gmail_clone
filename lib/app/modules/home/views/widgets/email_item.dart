import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailItem extends StatelessWidget {
  const EmailItem({
    Key? key,
    required this.senderName,
    required this.emailSubject,
    required this.bodyText,
    required this.sentAt,
    required this.onPress,
  }) : super(key: key);

  final String senderName;
  final String emailSubject;
  final String bodyText;
  final String sentAt;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 10,
      onTap: onPress,
      leading: CircleAvatar(
        child: Text(
          senderName[0].toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(
          255,
          Random().nextInt(256),
          Random().nextInt(256),
          Random().nextInt(256),
        ),
      ),
      // Sender name
      title: Text(
        senderName,
        style: Get.theme.textTheme.bodyText1!.copyWith(fontSize: 12),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),

      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Email subject
          Text(
            emailSubject,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Get.theme.textTheme.bodyText2!
                .copyWith(fontSize: 11, fontWeight: FontWeight.w600),
          ),
          // Body text
          Text(
            bodyText,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Get.theme.textTheme.caption!.copyWith(fontSize: 11),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            sentAt,
            style: Get.theme.textTheme.bodyText1!.copyWith(fontSize: 12),
          ),
          Icon(
            Icons.star_border,
            size: 20,
          ),
        ],
      ),
    );
  }
}
