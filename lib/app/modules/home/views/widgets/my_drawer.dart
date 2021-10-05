import 'package:flutter/material.dart';
import 'package:gmail_clone/app/core/constants.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding,
            ),
            child: Text(
              'Gmail',
              style: TextStyle(
                color: Colors.red,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(),
          DrawerItem(
            title: 'All inboxes',
            icon: Icons.all_inbox,
            onPress: () {},
          ),
          Divider(),
          DrawerItem(
            icon: Icons.people_alt_outlined,
            title: 'Social',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.local_offer_outlined,
            title: 'Promotions',
            onPress: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding - 10,
            ),
            child: Text(
              'ALL LABELS',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          DrawerItem(
            icon: Icons.star_border,
            title: 'Starred',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.access_time,
            title: 'Snoozed',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.label_important_outline_sharp,
            title: 'Important',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.send_outlined,
            title: 'Sent',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.schedule_send_outlined,
            title: 'Schedule',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.outbox_outlined,
            title: 'Outbox',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.drafts_outlined,
            title: 'Drafts',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.mark_as_unread_outlined,
            title: 'All mail',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.report_gmailerrorred,
            title: 'Spam',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.delete_outline,
            title: 'Trash',
            onPress: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding - 10,
            ),
            child: Text(
              'GOOGLE APPS',
              style: TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          DrawerItem(
            icon: Icons.calendar_today_rounded,
            title: 'Calendar',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.perm_contact_calendar_outlined,
            title: 'Contacts',
            onPress: () {},
          ),
          Divider(),
          DrawerItem(
            icon: Icons.settings,
            title: 'Settings',
            onPress: () {},
          ),
          DrawerItem(
            icon: Icons.help_outline,
            title: 'Help & feedback',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onPress,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black.withOpacity(0.7),
        ),
      ),
      onTap: onPress,
    );
  }
}
