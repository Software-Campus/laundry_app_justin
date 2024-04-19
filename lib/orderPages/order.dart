import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/orderPages/orderid.dart';
import 'package:laundaryapp/orderPages/orderid1.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  icon: Icon(Icons.grid_view_rounded, color: Color(0xff6E97AE)),
                  selectedIcon: Icon(
                    Icons.grid_view_rounded,
                    color: Colors.blue,
                    size: 28.sp,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Image.asset(
                    'asset/images/calendar.png',
                    height: 28.h,
                    width: 28.w,
                    color: color1FACF3,
                  ),
                  selectedIcon: Image.asset(
                    'asset/images/calendar.png',
                    height: 28.h,
                    width: 28.w,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Icon(Icons.notifications,
                      size: 28.sp, color: Color(0xff6E97AE)),
                  selectedIcon: Icon(
                    Icons.notifications,
                    color: Colors.blue,
                    size: 28.sp,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff6E97AE),
                    size: 28.sp,
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
      backgroundColor: colorECF3F6,
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 62.h, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Orders',
                    style: font24fw700black,
                  ),
                  Container(
                    height: 37.h,
                    width: 123.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(18.5.r)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'All Orders',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff6E97AE),
                            fontFamily: 'DM_Sans',
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 20.sp,
                          color: Color(0xff6E97AE),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Gap(32.h),
              contain2(
                image: 'asset/images/Gp1.png',
                text1: 'Washing',
                text2: 'On-Going',
                color: Color(0xffF3DD0F),
                text3: 'Tracking',
                isvisible: false,
                isvisible1: true,
                details: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderidPage(),
                      ));
                },
              ),
              Gap(18.h),
              contain2(
                image: 'asset/images/Gp2.png',
                text1: 'ironing',
                text2: 'Completed',
                color: Color(0xff30D472),
                text3: 'Add rating',
                isvisible: true,
                isvisible1: true,
                details: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderidPage1(),
                      ));
                },
                tracking: () {
                  showModalBottomSheet(
                    scrollControlDisabledMaxHeightRatio: 0.65,
                    context: context,
                    builder: (context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: 587.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.r),
                                topRight: Radius.circular(12.r))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 23.w, top: 37.h),
                              child: Row(
                                children: [
                                  Text(
                                    'How satisfied were you\nwith your experience',
                                    style: font24fw700black,
                                  ),
                                  Gap(60.w),
                                  Icon(
                                    Icons.close,
                                    size: 22.sp,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 24.w, top: 35.h),
                              child: Column(
                                children: [
                                  Container(
                                    height: 71.h,
                                    width: 333.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffECF3F6),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 14.h, left: 43.w, bottom: 15.h),
                                      child: Row(
                                        children: [
                                          star(
                                            color: color1FACF3,
                                            height: 42.h,
                                            width: 42.w,
                                          ),
                                          Gap(10.w),
                                          star(
                                            color: color1FACF3,
                                            height: 42.h,
                                            width: 42.w,
                                          ),
                                          Gap(10.w),
                                          star(
                                            color: color1FACF3,
                                            height: 42.h,
                                            width: 42.w,
                                          ),
                                          Gap(10.w),
                                          star(
                                            color: color1FACF3,
                                            height: 42.h,
                                            width: 42.w,
                                          ),
                                          Gap(10.w),
                                          star(
                                            color: Colors.white,
                                            height: 42.h,
                                            width: 42.w,
                                          ),
                                          Gap(10.w),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Gap(24.h),
                                  Container(
                                    height: 170.h,
                                    width: 333.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffECF3F6),
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
                                    child: TextField(
                                      style: font16fw700black,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                          hintText: 'Enter Feedback here',
                                          hintStyle: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff6E97AE),
                                            fontFamily: 'DM_Sans',
                                          )),
                                    ),
                                  ),
                                  Gap(35.h),
                                  Container(
                                    height: 64.h,
                                    width: 333.w,
                                    decoration: BoxDecoration(
                                        color: color1FACF3,
                                        borderRadius:
                                            BorderRadius.circular(140.r)),
                                    child: Center(
                                        child: Text(
                                      'Submit',
                                      style: font16fw700white,
                                    )),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              Gap(18.h),
              contain2(
                image: 'asset/images/Gp1.png',
                text1: 'Washing',
                text2: 'Cancelled',
                color: Color(0xffD14646),
                text3: 'Tracking',
                isvisible: false,
                isvisible1: false,
              ),
              Gap(14.h)
            ],
          ),
        ),
      ),
    );
  }
}

class contain2 extends StatelessWidget {
  const contain2({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.color,
    required this.text3,
    required this.isvisible,
    required this.isvisible1,
    this.details,
    this.tracking,
  });
  final String image;
  final String text1;
  final String text2;
  final Color color;
  final String text3;
  final bool isvisible;
  final bool isvisible1;
  final void Function()? details;
  final void Function()? tracking;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 189.h,
      width: 333.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(24.r)),
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.w,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 17.w,
              ),
              child: Column(
                children: [
                  Container(
                    height: 123.h,
                    width: 88.w,
                    decoration: BoxDecoration(
                        color: colorECF3F6,
                        borderRadius: BorderRadius.circular(21.r)),
                    child: Center(
                        child: Image.asset(
                      image,
                      height: 61.h,
                      width: 48.w,
                    )),
                  ),
                  Gap(14.h),
                  Text('20 Dec 2024', style: font12fw500black),
                  Text(
                    isvisible ? '₹499' : '',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff30D472),
                      fontFamily: 'DM_Sans',
                    ),
                  )
                ],
              ),
            ),
            Gap(12.w),
            Padding(
              padding: EdgeInsets.only(
                top: 5.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(12.h),
                  Row(
                    children: [
                      Text(
                        text1,
                        style: font16fw700black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 65.w, right: 10.w),
                        child: Container(
                          height: 23.h,
                          width: 80.w,
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Center(
                            child: Text(text2, style: font12fw500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(19.h),
                  Row(
                    children: [
                      Text(
                        'Shirt',
                        style: font14fw400black,
                      ),
                      Gap(164.w),
                      Text(
                        'X2',
                        style: font14fw400black,
                      )
                    ],
                  ),
                  Gap(2.h),
                  Row(
                    children: [
                      Text(
                        'T-Shirt',
                        style: font14fw400black,
                      ),
                      Gap(149.w),
                      Text(
                        'X2',
                        style: font14fw400black,
                      )
                    ],
                  ),
                  Gap(2.h),
                  Row(
                    children: [
                      Text(
                        'Shorts',
                        style: font14fw400black,
                      ),
                      Gap(155.w),
                      Text(
                        'X1',
                        style: font14fw400black,
                      )
                    ],
                  ),
                  Gap(2.h),
                  Text(
                    '+2 items',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6E97AE),
                      fontFamily: 'DM_Sans',
                    ),
                  ),
                  Gap(8.h),
                  isvisible1
                      ? Row(
                          children: [
                            GestureDetector(
                              onTap: details,
                              child: contain1(
                                text: 'Details',
                              ),
                            ),
                            Gap(8.w),
                            GestureDetector(
                              onTap: tracking,
                              child: contain1(
                                text: text3,
                              ),
                            ),
                          ],
                        )
                      : GestureDetector(
                          onTap: details,
                          child: Container(
                            height: 29.h,
                            width: 212.w,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 233, 253, 255),
                                borderRadius: BorderRadius.circular(20.r)),
                            child: Center(
                              child: Text(
                                'Details',
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff34D5E5),
                                  fontFamily: 'DM_Sans',
                                ),
                              ),
                            ),
                          ),
                        ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class contain1 extends StatelessWidget {
  const contain1({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 29.h,
      width: 102.w,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 233, 253, 255),
          borderRadius: BorderRadius.circular(20.r)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: Color(0xff34D5E5),
            fontFamily: 'DM_Sans',
          ),
        ),
      ),
    );
  }
}
