import 'package:flutter/material.dart';
import 'package:the_luxury_hut/screens/account_screen/ui/account_screen_ui.dart';
import 'package:the_luxury_hut/screens/chat_screen/ui/chat_screen_ui.dart';
import 'package:the_luxury_hut/screens/discover_screen/ui/discover_screen_ui.dart';
import 'package:the_luxury_hut/screens/my_watches_screen/ui/my_watches_screen_ui.dart';
import 'package:the_luxury_hut/screens/sell_screen/ui/sell_screen_ui.dart';

import 'constants/dimens.dart';
import 'constants/palatte.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  int currentIndex = 0;
  final List pages = [
    const DiscoverScreen(),
    const ChatScreen(),
    const SellScreen(),
    const MyWatchesScreen(),
    const AccountScreen()
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        onTap: onTap,
        currentIndex: currentIndex,
        backgroundColor: AppColors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.orange,
        unselectedItemColor: AppColors.lightGrey,
        selectedFontSize: AppSizes.bodyText2,
        unselectedFontSize: AppSizes.bodyText2,
        items: const [
          BottomNavigationBarItem(
            label: 'Lobby',
            icon: Icon(Icons.dashboard_outlined),
            activeIcon: Icon(Icons.dashboard),),

          BottomNavigationBarItem(
            label: 'Rewards',
            icon: Icon(Icons.request_page_outlined),
            activeIcon: Icon(Icons.request_page),),

          BottomNavigationBarItem(
            label: 'Create',
            icon: Icon(Icons.add_box_outlined),
            activeIcon: Icon(Icons.add_box_rounded),),

          BottomNavigationBarItem(
            label: 'Rankings',
            icon: Icon(Icons.request_page_outlined),
            activeIcon: Icon(Icons.request_page),),

          BottomNavigationBarItem(
            label: 'More',
            icon: Icon(Icons.horizontal_split_outlined),
            activeIcon: Icon(Icons.horizontal_split_sharp),),
        ],
      ),
    );
  }
}
