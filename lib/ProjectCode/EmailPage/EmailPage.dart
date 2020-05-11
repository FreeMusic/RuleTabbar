import 'package:flutter/material.dart';

class EmailPage extends StatefulWidget {
  EmailPageState createState() => EmailPageState();
}

class EmailPageState extends State<EmailPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('邮件'),
      ),
      body: Center(
        child: Text('邮件'),
      ),
    );
  }
}
