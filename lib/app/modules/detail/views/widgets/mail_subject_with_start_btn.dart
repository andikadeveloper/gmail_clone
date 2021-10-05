import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MailSubjectWithStarBtn extends StatelessWidget {
  const MailSubjectWithStarBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Happy birth day to you',
                style: Get.theme.textTheme.headline6!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5),
                padding: const EdgeInsets.all(2),
                color: Colors.grey[300],
                alignment: Alignment.center,
                child: Text(
                  'Inbox',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        Icon(
          Icons.star_outline,
        ),
      ],
    );
  }
}
