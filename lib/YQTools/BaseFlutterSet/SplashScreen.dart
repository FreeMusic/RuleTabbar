import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabbar_flutter_app/YQTools/BaseFlutterSet/TabbarWidge.dart';

/*
闪屏动画的制作

AnimationContr是Animation的一个子类,他可以控制Animation，也就是说用来控制动画的，
比如说控制动画的执行时间。主要有两个参数：
vsync:this  垂直同步设置，使用this就可以了
duration:动画持续时间
*/

class YQSplashScreen extends StatefulWidget {
  YQSplashScreenState createState() => YQSplashScreenState();
}

class YQSplashScreenState extends State<YQSplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    /*动画事件监听器 它可以监听到动画的执行状态
    我们这里只监听动画是否结束
    如果结束则执行页面跳转动作
    * */
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => TabbarWidget()),
            ((route) => route == null));
      }
    });

    //播放动画
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FadeTransition(
      //透明度动画组件
      opacity: _animation, //执行动画
      child: new Image(image: new AssetImage('Image/LauchImage.jpeg')),
    );
  }
}
