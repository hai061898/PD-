// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pd/controllers/home_controller.dart';
import 'package:pd/models/menu_model.dart';
import 'package:pd/page/home/components/side_menu_button.dart';
import 'package:pd/utils/constants.dart';
import 'package:pd/widgets/custom_divider.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: kDefaultFatPadding,
        bottom: kDefaultFatPadding,
        left: kDefaultFatPadding,
        right: kDefaultFatPadding * 2,
      ),
      width: kWidthSideMenu,
      height: double.infinity,
      child: Column(
        children: [
          ...List.generate(
            menuButtons.length ~/ 2,
            (index) => SideMenuButton(
              iconUrl: menuButtons[index].iconUrl,
              title: menuButtons[index].title,
              isSelected: menuButtons[index].index ==
                  context.watch<HomeController>().selectedIndex,
              onPress: () {
                context
                    .read<HomeController>()
                    .onChangeSelectedIndex(menuButtons[index].index);
              },
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          CustomDivider(),
          SizedBox(
            height: kDefaultPadding,
          ),
          ...List.generate(
            menuButtons.length ~/ 2,
            (index) {
              int newIndex = menuButtons.length ~/ 2 + index;
              return SideMenuButton(
                iconUrl: menuButtons[newIndex].iconUrl,
                title: menuButtons[newIndex].title,
                isSelected: menuButtons[newIndex].index ==
                    context.watch<HomeController>().selectedIndex,
                onPress: () {
                  context
                      .read<HomeController>()
                      .onChangeSelectedIndex(menuButtons[newIndex].index);
                },
              );
            },
          ),
          Spacer(),
          CustomDivider(),
          SizedBox(
            height: kDefaultFatPadding,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding,
              horizontal: kDefaultPadding,
            ),
            decoration: BoxDecoration(
              color: primaryDarkColor,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  logoutIcon,
                  width: 32.0,
                  height: 32.0,
                  color: Colors.white,
                ),
                SizedBox(
                  width: kDefaultPadding,
                ),
                 Text(
                  'Another Account',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
