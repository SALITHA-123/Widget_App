import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupTabScaff extends StatefulWidget {

  @override
  _CupTabScaffState createState() => _CupTabScaffState();
}

class _CupTabScaffState extends State<CupTabScaff> {
  List<Widget> _tabs = [
    HomeTab(), // see the HomeTab class below
    SettingTab() // see the SettingsTab class below
  ];
      @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar:AppBar(title: Text('Tab Scaffold', style: TextStyle(fontSize: 30,),),
              centerTitle: true,
              backgroundColor: Colors.blue,
            ),
            body: CupertinoPageScaffold(
                   navigationBar: CupertinoNavigationBar(
                    middle: Text('Tab Scaffold'),
                      ),
              child: CupertinoTabScaffold(
                tabBar: CupertinoTabBar(
                  items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: 'Settings')
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
            child: Text('Home',style: TextStyle(fontSize: 25),),
          );
        }
      }

// Settings Tab
class SettingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings',style: TextStyle(fontSize: 25),),
    );
  }
}

