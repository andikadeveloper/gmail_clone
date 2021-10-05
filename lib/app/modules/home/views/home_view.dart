import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:gmail_clone/app/core/constants.dart';
import 'package:gmail_clone/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'widgets/app_bar_search_email.dart';
import 'widgets/email_item.dart';
import 'widgets/my_bottom_nav_bar.dart';
import 'widgets/my_drawer.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: CustomScrollView(
        slivers: [
          // Appbar
          SliverAppBar(
            floating: true,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            title: AppBarSearchEmail(
              onProfileClick: () {},
              onSearchClick: () {},
            ),
          ),
          // Primary text
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                left: kDefaultPadding - 5,
                top: kDefaultPadding - 10,
              ),
              child: Text(
                'PRIMARY',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.black45,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          // Body
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, index) {
                return EmailItem(
                  senderName: 'Lionel Messi',
                  emailSubject: 'Happy Birtday to My Friend',
                  bodyText: 'Hello, my friend. Happy Birthday to you bro.',
                  sentAt: '4 Oct',
                  onPress: () => Get.toNamed(Routes.DETAIL),
                );
              },
              childCount: 100,
            ),
          )
        ],
      ),
      // Navigation bar
      bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
