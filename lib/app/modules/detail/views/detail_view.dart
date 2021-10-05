import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gmail_clone/app/core/constants.dart';
import 'package:gmail_clone/app/modules/detail/views/widgets/appbar_action_btn.dart';

import '../controllers/detail_controller.dart';
import 'widgets/bottom_outlined_btn.dart';
import 'widgets/mail_subject_with_sender_mail.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(
          color: Colors.black54,
        ),
        actions: appBarActions,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MailSubjectWithSenderMail(),
            Container(
              width: Get.width,
              margin: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding,
                vertical: kDefaultPadding - 5,
              ),
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is Lorem Ipsum?',
                    style: Get.theme.textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Thank you',
                    style: Get.theme.textTheme.subtitle2,
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.15,
              color: Colors.white,
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: BottomOutlinedBtn(
                      text: 'Reply',
                      icon: Icons.reply,
                      onPress: () {},
                    ),
                  ),
                  Flexible(
                    child: BottomOutlinedBtn(
                      icon: Icons.reply_all_outlined,
                      text: 'Reply all',
                      onPress: () {},
                    ),
                  ),
                  Flexible(
                    child: BottomOutlinedBtn(
                      icon: Icons.forward_outlined,
                      text: 'Forward',
                      onPress: () {},
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
