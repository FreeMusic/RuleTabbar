import 'package:flutter/material.dart';
import 'package:tabbar_flutter_app/ProjectCode/EmailPage/EmailPage.dart';
import 'package:tabbar_flutter_app/ProjectCode/HomePage/HomePage.dart';
import 'package:tabbar_flutter_app/ProjectCode/MessagePage/MessagePage.dart';
import 'package:tabbar_flutter_app/ProjectCode/PersonalPage/PersonalPage.dart';

/*
StatefulWidget具有可变状态state的窗口组件，使用这个要根据变化状态调整State的值
StatefulWidget使用分为两个部分，第一个部分是继承自StatefulWidget，第二个部分继承State。
State才是我们的重点
*/
class name extends StatefulWidget {
  _nameState createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
//      child: child,
        );
  }
}

class TabbarWidget extends StatefulWidget {
  TabbarWidgetState createState() => TabbarWidgetState();
}

class TabbarWidgetState extends State<TabbarWidget> {
  final tabbarColor = Colors.blue;

  int _currentIndex = 0;
  List<Widget> list = List();

  @override
  void initState() {
    list
      ..add(HomePage())
      ..add(EmailPage())
      ..add(MessagePage())
      ..add(PersonalPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: list[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: tabbarColor,
              ),
              title: Text(
                '首页',
                style: TextStyle(color: tabbarColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.email,
                color: tabbarColor,
              ),
              title: Text(
                '邮件',
                style: TextStyle(color: tabbarColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.pages,
                color: tabbarColor,
              ),
              title: Text(
                '消息',
                style: TextStyle(color: tabbarColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.airplay,
                color: tabbarColor,
              ),
              title: Text(
                '个人中心',
                style: TextStyle(color: tabbarColor),
              )),
        ],
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
