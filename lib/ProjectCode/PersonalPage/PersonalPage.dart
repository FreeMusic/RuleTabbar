import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  PersonalPageState createState() => PersonalPageState();
}

class PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('个人中心'),
      ),
      body: Center(
        child: Text('个人中心'),
      ),
    );
  }
}
