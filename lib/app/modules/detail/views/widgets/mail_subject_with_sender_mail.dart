import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gmail_clone/app/core/constants.dart';

import 'mail_subject_with_start_btn.dart';
import 'sender_mail_item.dart';

class MailSubjectWithSenderMail extends StatelessWidget {
  const MailSubjectWithSenderMail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.16,
      width: Get.width,
      padding: EdgeInsets.only(
        left: kDefaultPadding - 10,
        top: kDefaultPadding - 15,
        right: kDefaultPadding - 15,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MailSubjectWithStarBtn(),
          SenderMailItem(),
        ],
      ),
    );
  }
}
