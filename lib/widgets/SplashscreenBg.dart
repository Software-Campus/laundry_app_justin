import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashscreenBG extends StatelessWidget {
  final Widget mywidget;
  const SplashscreenBG({super.key, required this.mywidget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1FACF3),
        body: Stack(
          children: [Positioned
          (bottom: 0,
            child: Image.asset('asset/images/pic6.png'))],
        ));
  }
}
