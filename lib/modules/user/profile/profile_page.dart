import 'package:demo/core/ui/colors.dart';
import 'package:demo/core/ui/widgets/bottom_navigation_bar.dart';
import 'package:demo/core/ui/widgets/default_space.dart';
import 'package:demo/modules/user/profile/widgets/common_cards.dart';
import 'package:demo/modules/user/profile/widgets/informative_cards.dart';
import 'package:demo/modules/user/profile/widgets/pause_feed_card.dart';
import 'package:demo/modules/user/profile/widgets/user_container.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  static const List<String> informativeItems = [
    'Score',
    'Connected',
    'Noped',
  ];

  static const List<String> informativeItemsValues = [
    '23%',
    '234',
    '937',
  ];

  static const List<String> menuItems = [
    'Filters',
    'Account',
    'Payments',
    'Contact us'
  ];

  static const List<IconData> menuIcons = [
    Icons.filter_alt,
    Icons.account_circle,
    Icons.payment,
    Icons.mail_sharp,
  ];

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex = 0;
  int informativeCurrentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  void _onInformativeItemTapped(int index) {
    setState(() {
      informativeCurrentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DefaultSpace(),
                const UserContainer(
                  userName: 'Carlos Henrique',
                  userDetail: 'Mobile Software Developer',
                ),
                const DefaultSpace(),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: ProfilePage.informativeItems.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () => _onInformativeItemTapped(index),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 3.4,
                        child: InformativeCards(
                          informationValue:
                              ProfilePage.informativeItemsValues[index],
                          description: ProfilePage.informativeItems[index],
                          isSelected: informativeCurrentIndex == index,
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 10,
                    ),
                  ),
                ),
                const DefaultSpace(),
                const PauseFeedCard(),
                const DefaultSpace(),
                SizedBox(
                  height: 285,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: ProfilePage.menuItems.length,
                    itemBuilder: (context, index) => CommonCards(
                      icon: ProfilePage.menuIcons[index],
                      text: ProfilePage.menuItems[index],
                    ),
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                  ),
                ),
                const DefaultSpace(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    elevation: 0,
                  ),
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 16,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBarWidget(
          onTap: _onItemTapped,
          currentIndex: currentIndex,
        ),
      ),
    );
  }
}
