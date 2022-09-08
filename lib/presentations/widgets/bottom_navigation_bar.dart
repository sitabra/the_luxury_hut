import 'package:flutter/material.dart';
import 'package:the_luxury_hut/presentations/screens/account_screen/ui/account_screen_ui.dart';
import 'package:the_luxury_hut/presentations/screens/chat_screen/ui/chat_screen_ui.dart';
import 'package:the_luxury_hut/presentations/screens/discover_screen/ui/discover_screen_ui.dart';
import 'package:the_luxury_hut/presentations/screens/my_watches_screen/ui/my_watches_screen_ui.dart';
import 'package:the_luxury_hut/presentations/screens/sell_screen/ui/sell_screen_ui.dart';

import '../../constants/dimens.dart';
import '../../constants/palatte.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  int currentIndex = 2;
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
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.lightGrey,
        selectedFontSize: AppSizes.bodyText2,
        unselectedFontSize: AppSizes.bodyText2,
        items: const [
          BottomNavigationBarItem(
            label: 'Discover',
            icon: Icon(Icons.search,
            color: AppColors.black,),
            activeIcon: Icon(Icons.search),),

          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(Icons.chat_bubble_outline,
              color: AppColors.black,),
            activeIcon: Icon(Icons.chat_bubble_outline),),

          BottomNavigationBarItem(
            label: 'Sell',
            icon: Icon(Icons.sell_outlined,
              color: AppColors.white,),
            activeIcon: Icon(Icons.sell),),

          BottomNavigationBarItem(
            label: 'My Watches',
            icon: Icon(Icons.watch,
              color: AppColors.black,),
            activeIcon: Icon(Icons.watch),),

          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(Icons.person_outline,
              color: AppColors.black,),
            activeIcon: Icon(Icons.person),),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 32,
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.green,
            child: Icon(Icons.sell_outlined,
            color: AppColors.white,),
          )
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
