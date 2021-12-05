// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pd/utils/constants.dart';
import 'package:pd/widgets/custom_divider.dart';
import 'package:pd/widgets/small_text.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kHeigtAppbar,
      child: Row(
        children: [
          Container(
            width: kWidthSideMenu,
            padding: const EdgeInsets.only(
              top: kDefaultFatPadding,
              left: kDefaultFatPadding,
              right: kDefaultFatPadding * 2,
            ),
            child: Column(
              children: [
                Image.asset(playstationLogo),
                Spacer(),
                CustomDivider(),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: kDefaultFatPadding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        searchIcon,
                        width: 32.0,
                        height: 32.0,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      SizedBox(
                        width: kDefaultPadding,
                      ),
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            hintText: 'Search ....',
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  CustomDivider(),
                ],
              ),
            ),
          ),
          Container(
            width: kWidthSideMenu,
            padding: EdgeInsets.only(
              top: kDefaultFatPadding,
              left: kDefaultFatPadding,
              right: kDefaultFatPadding * 2,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: Image.asset("assets/avatar/avatar.png"),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          'RnD1 Youtuber',
                          style: TextStyle(color: Colors.white, fontSize: 16.0),
                        ),
                        SizedBox(
                          width: kDefaultPadding,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                        ),
                      ],
                    ),
                    SmallTextCustom(
                      title: '288 level',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
