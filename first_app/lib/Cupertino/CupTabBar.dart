import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupTabBar extends StatefulWidget {

  @override
  _CupTabBarState createState() => _CupTabBarState();
}

class _CupTabBarState extends State<CupTabBar> {
  List<Widget> _tabs = [
    HomeTab(), // see the HomeTab class below
    SettingTab() // see the SettingsTab class below
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('Tab Bar', style: TextStyle(fontSize: 30,),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Tab Bar'),
        ),
        child: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home Tab'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings Tab')
              ],
            ),
            tabBuilder: (BuildContext context, index) {
              return _tabs[index];
            }
        ),
      ),
    );
  }
}

// Home Tab
class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Tab',style: TextStyle(fontSize: 25),),
    );
  }
}

// Settings Tab
class SettingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Tab',style: TextStyle(fontSize: 25),),
    );
  }
}
