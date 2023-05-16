import 'package:dc_course_library/components/searchfield_widget.dart';
import 'package:dc_course_library/components/sidebar_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({super.key, required this.triggerAnimation});

  final Function triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(
            triggerAnimation: triggerAnimation,
          ),
          const SearchFieldWidget(),
          const Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          const SizedBox(width: 16.0),
          const CircleAvatar(
            radius: 18.0,
            backgroundImage: AssetImage('asset/images/profile.jpg'),
          ),
        ],
      ),
    );
  }
}
