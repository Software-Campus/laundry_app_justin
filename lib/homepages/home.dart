import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/washing.dart';
import 'package:laundaryapp/notifications/notify.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/profile/laundry.dart';
import 'package:laundaryapp/profile/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Scaffold(
            resizeToAvoidBottomInset: false,
            extendBody: true,
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.circular(140.sp),
              child: Container(
                height: 64.h,
                margin: EdgeInsets.only(bottom: 27.h, left: 24.w, right: 24.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(140.sp),
                ),
                clipBehavior: Clip.hardEdge,
                child: NavigationBar(
                  backgroundColor: Colors.white,
                  surfaceTintColor: Colors.white,
                  indicatorColor: Colors.white,
                  destinations: [
                    NavigationDestination(
                        icon: Icon(Icons.grid_view_rounded,
                            color: Color(0xff6E97AE)),
                        selectedIcon: Icon(
                          Icons.grid_view_rounded,
                          color: Colors.blue,
                          size: 28.sp,
                        ),
                        label: ''),
                    NavigationDestination(
                        icon: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderPage(),
                                ));
                          },
                          child: Image.asset(
                            'asset/images/calendar.png',
                            height: 28.h,
                            width: 28.w,
                          ),
                        ),
                        selectedIcon: Image.asset(
                          'asset/images/calendar.png',
                          height: 28.h,
                          width: 28.w,
                          color: color1FACF3,
                        ),
                        label: ''),
                    NavigationDestination(
                        icon: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NotifyPage(),
                                ));
                          },
                          child: Icon(Icons.notifications,
                              size: 28.sp, color: Color(0xff6E97AE)),
                        ),
                        selectedIcon: Icon(
                          Icons.notifications,
                          color: Colors.blue,
                          size: 28.sp,
                        ),
                        label: ''),
                    NavigationDestination(
                        icon: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfilePage(),
                                ));
                          },
                          child: Icon(
                            Icons.person,
                            color: Color(0xff6E97AE),
                            size: 28.sp,
                          ),
                        ),
                        selectedIcon: Icon(
                          Icons.person,
                          color: Colors.blue,
                          size: 28.sp,
                        ),
                        label: ''),
                  ],
                ),
              ),
            ),
            backgroundColor: Color(0xffECF3F6),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 70.h, left: 28.w, right: 199.w),
                    child: Text(
                      'Hello\nJohn Doe',
                      style: TextStyle(
                          fontSize: 34.sp,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.h, left: 27.w),
                    child: Row(
                      children: [
                        Image.asset(
                          'asset/images/house.png',
                          height: 15.h,
                          width: 15.w,
                        ),
                        Gap(8.w),
                        Text(
                          'Westhills, Calicut',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff6E97AE)),
                        ),
                        Gap(6.w),
                        Icon(Icons.keyboard_arrow_down,
                            size: 20.sp, color: Color(0xff6E97AE))
                      ],
                    ),
                  ),
                  Gap(27.h),
                  CarouselSlider(
                    options: CarouselOptions(height: 139.h,autoPlay: false,),
                    items: [
                      1,
                      
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(
                              'asset/images/pic8.png',
                              height: 139.h,
                              width: 328.w,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  
                  Gap(55.h),
                  Container(
                    height: 155.h,
                    width: 327.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Padding(
                      padding: EdgeInsets.only(top: 18.5.h, left: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'asset/images/offer.png',
                                height: 19.h,
                                width: 19.w,
                              ),
                              Gap(8.w),
                              Text(
                                'Offers',
                                style: font16fw700blue,
                              )
                            ],
                          ),
                          Gap(8.h),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                offer(
                                  text:
                                      'Free delivery on every orders for \n6 months',
                                  text1: '₹499',
                                ),
                                Gap(12.w),
                                offer(
                                  text:
                                      'Free delivery on every orders for \n3 months',
                                  text1: '₹299',
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 24),
                      crossAxisCount: 2,
                      mainAxisSpacing: 15.24.h,
                      crossAxisSpacing: 21.w,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WashingPage(),
                                ));
                          },
                          child: open(
                            image: Image.asset(
                              'asset/images/Gp1.png',
                              height: 63.36.h,
                              width: 49.78.w,
                            ),
                            text: 'Washing',
                          ),
                        ),
                        open(
                          image: Image.asset(
                            'asset/images/Gp2.png',
                            height: 58.37.h,
                            width: 32.89.w,
                          ),
                          text: 'Ironing',
                        ),
                        open(
                          image: Image.asset(
                            'asset/images/Gp3.png',
                            height: 63.04.h,
                            width: 71.88.w,
                          ),
                          text: 'Wash & Iron',
                        ),
                        open(
                          image: Image.asset(
                            'asset/images/Gp4.png',
                            height: 64.02.h,
                            width: 61.54.w,
                          ),
                          text: 'Dry Clean',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset(
            'asset/images/pic7.png',
            height: 138.h,
            width: 249.w,
          ),
        ),
      ],
    );
  }
}

class offer extends StatelessWidget {
  const offer({
    super.key,
    required this.text,
    required this.text1,
  });
  final String text;
  final String text1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91.h,
      width: 242.w,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 228, 236, 238),
          borderRadius: BorderRadius.circular(8.r)),
      child: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: font14fw500black,
            ),
            Text(
              text1,
              style: TextStyle(
                fontSize: 21.7.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff6E97AE),
                fontFamily: 'DM_Sans',
              ),
            )
          ],
        ),
      ),
    );
  }
}

class open extends StatelessWidget {
  const open({
    super.key,
    required this.image,
    required this.text,
  });
  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145.h,
      width: 145.w,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(30.sp)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          Gap(16.34.h),
          Text(
            text,
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 0, 0, 0)),
          )
        ],
      ),
    );
  }
}
