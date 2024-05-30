import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/screen/splash2.dart';
import 'package:laundaryapp/screen/splash3.dart';

class SplashPage1 extends StatefulWidget {
  const SplashPage1({super.key});

  @override
  State<SplashPage1> createState() => _SplashPage1State();
}

class _SplashPage1State extends State<SplashPage1> {
  int indexpage = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            backgroundColor: Color(0xff1FACF3),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 58.h, left: 310.w),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SplashPage2(),
                                ));
                          },
                          child: Text('Skip')),
                    ),
                    Gap(7.h),
                    Padding(
                      padding: EdgeInsets.only(left: 32.w, right: 56.w),
                      child: CarouselSlider(
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.3,
                            autoPlay: false,
                            enableInfiniteScroll: false,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                indexpage = index;
                              });
                            },
                          ),
                          items: [
                            Image.asset(
                              'asset/images/pic4.png',
                              height: 255.h,
                              width: 293.w,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'asset/images/pic4.png',
                              height: 255.h,
                              width: 293.w,
                              fit: BoxFit.cover,
                            ),
                            Image.asset(
                              'asset/images/pic4.png',
                              height: 255.h,
                              width: 293.w,
                              fit: BoxFit.cover,
                            ),
                          ]),
                    ),
                    Gap(54.h),
                    Text(
                      'Get your Laundry and\nDry cleaning in 24 hours',
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Gap(16.h),
                    Text(
                      "A convenient laundry solution that\n helps protect the enviornment ",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Gap(40.h),
                DotsIndicator(
                  dotsCount: 3,
                  position: indexpage,
                  decorator: DotsDecorator(
                      color: Color(0xff141521),
                      size: Size(8.w, 8.h),
                      activeSize: Size(25.w, 8.w),
                      activeColor: Colors.white,
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.r))),
                ),
                Gap(28.h),
                Column(
                  children: [
                    Image.asset(
                      'asset/images/pic5.png',
                      height: 231.h,
                      width: 393.w,
                      fit: BoxFit.cover,
                    ),
                  ],
                )
              ],
            )),
        Positioned(
          top: 700.h,
          left: 152.w,
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SplashPage2(),
                  ));
            },
            child: Container(
              height: 64.h,
              width: 64.w,
              decoration: BoxDecoration(
                  color: Color(0xff34D5E5),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xff34D5E5),
                        blurRadius: 15,
                        offset: Offset(0, 8))
                  ]),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 30.sp,
              ),
            ),
          ),
        )
      ],
    );
  }
}
