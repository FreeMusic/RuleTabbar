import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  MessagePageState createState() => MessagePageState();
}

class MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('消息'),
      ),
      body: Center(
        child: Text('消息'),
      ),
    );
  }
}
