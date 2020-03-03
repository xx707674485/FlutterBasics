import 'package:flutter/material.dart';
import 'package:flutter_basics/activitys/home/home_activity.dart';
import 'package:flutter_basics/activitys/mine/mine_activity.dart';
import 'package:flutter_basics/activitys/switch_theme_mode_activity.dart';
import 'package:flutter_basics/generated/i18n.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

class PluginTabarActivity extends StatefulWidget {
  PluginTabarActivity({Key key}) : super(key: key);

  @override
  _PluginTabarActivityState createState() => _PluginTabarActivityState();
}

class _PluginTabarActivityState extends State<PluginTabarActivity> {
  List<Widget> pages = List<Widget>();
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();

    pages
      ..add(HomeActivity())
      ..add(MineActivity());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Theme.of(context).backgroundColor,
          selectedItemBackgroundColor: Theme.of(context).tabBarTheme.labelStyle.color,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Theme.of(context).tabBarTheme.labelStyle.color,
          showSelectedItemShadow: false,
          barHeight: 75,
          itemWidth: 60,
        ),
        selectedIndex: _currentIndex,
        onSelectTab: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: S.of(context).tab_home_title,
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: S.of(context).tab_mine_title,
            //selectedBackgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}