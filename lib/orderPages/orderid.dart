import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress.dart';
import 'package:slider_button/slider_button.dart';

class OrderidPage extends StatefulWidget {
  const OrderidPage({super.key});

  @override
  State<OrderidPage> createState() => _OrderidPageState();
}

class _OrderidPageState extends State<OrderidPage> {
  int selected = 1;
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text('Id: 152589', style: font20fw700),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          top: 25.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 85.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 16.h, right: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Status', style: font16fw700blue),
                      Gap(8.h),
                      Container(
                        height: 29.h,
                        width: 309.w,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 233, 253, 255),
                            borderRadius: BorderRadius.circular(20.r)),
                        child: Row(
                          children: [
                            Gap(9.w),
                            Icon(
                              Icons.notifications_rounded,
                              color: Color(
                                0xff34D5E5,
                              ),
                              size: 20.sp,
                            ),
                            Gap(4.w),
                            Text(
                              'Booking Accepted',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff34D5E5),
                                fontFamily: 'DM_Sans',
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(12.h),
              contain(
                text1: 'Pick Up',
                text: '25-03-2023',
                containon: true,
              ),
              Gap(13.h),
              contain(
                text1: 'Delivery (Express)',
                text: '26-03-2023',
                containon: true,
              ),
              Gap(16.h),
              Stack(
                children: [
                  Image.asset(
                    'asset/images/sum5.png',
                    height: 283.h,
                    width: 333.w,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 12.h,
                    left: 16.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Receipt',
                          style: font16fw700blue,
                        ),
                        Gap(8.h),
                        Row(
                          children: [
                            Text(
                              'Shirt',
                              style: font16fw400black,
                            ),
                            Gap(107.w),
                            Text(
                              'X2',
                              style: font16fw400black,
                            ),
                            Gap(109.w),
                            Text(
                              '₹40',
                              style: font16fw400black,
                            )
                          ],
                        ),
                        Gap(8.h),
                        Row(
                          children: [
                            Text(
                              'T-Shirt',
                              style: font16fw400black,
                            ),
                            Gap(90.w),
                            Text(
                              'X2',
                              style: font16fw400black,
                            ),
                            Gap(109.w),
                            Text(
                              '₹40',
                              style: font16fw400black,
                            )
                          ],
                        ),
                        Gap(8.h),
                        Row(
                          children: [
                            Text(
                              'Shorts',
                              style: font16fw400black,
                            ),
                            Gap(95.w),
                            Text(
                              'X1',
                              style: font16fw400black,
                            ),
                            Gap(109.w),
                            Text(
                              '₹40',
                              style: font16fw400black,
                            )
                          ],
                        ),
                        Gap(8.h),
                        Gap(12.h),
                        Row(
                          children: [
                            Text(
                              'Delivery Charge ',
                              style: font16fw400black,
                            ),
                            Gap(149.w),
                            Text(
                              '₹50',
                              style: font16fw400black,
                            )
                          ],
                        ),
                        Gap(8.h),
                        Row(
                          children: [
                            Text(
                              'Tax',
                              style: font16fw400black,
                            ),
                            Gap(240.w),
                            Text(
                              '₹50',
                              style: font16fw400black,
                            )
                          ],
                        ),
                        Gap(8.h),
                        Gap(12.h),
                        Row(
                          children: [
                            Text(
                              'Total',
                              style: font16fw700black,
                            ),
                            Gap(231.w),
                            Text(
                              '₹ 110',
                              style: font16fw700black,
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Gap(28.h),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        height: 260.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12.r),
                                topRight: Radius.circular(12.r))),
                        child: Column(
                          children: [
                            Gap(40.h),
                            Padding(
                              padding: EdgeInsets.only(left: 87.h),
                              child: Row(
                                children: [
                                  Text(
                                    'Are You Sure',
                                    style: TextStyle(
                                      fontSize: 34.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontFamily: 'DM_Sans',
                                    ),
                                  ),
                                  Gap(30.w),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => OrderidPage(),
                                          ));
                                    },
                                    child: Icon(
                                      Icons.close,
                                      size: 22.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Gap(12.h),
                            Text(
                              'Do You want to cancel\nThis Booking',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff99AABA),
                                fontFamily: 'DM_Sans',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 24.w, top: 19.h),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => OrderidPage(),
                                          ));
                                    },
                                    child: YorNcontain(
                                      colors: Colors.blue,
                                      text: 'No',
                                    ),
                                  ),
                                  Gap(8.w),
                                  GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(context: context, builder: (context) {
                                        return Container(
                                          height: 777.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(4.r),
                                topRight: Radius.circular(4.r))),
                                
                                        );
                                      },);
                                    },
                                    child: YorNcontain(
                                      colors: Colors.red,
                                      text: 'Yes,Cancel',
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Text(
                  'Cancel Booking',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffD14646),
                    fontFamily: 'DM_Sans',
                  ),
                ),
              ),
              Gap(40.h)
            ],
          ),
        ),
      ),
    );
  }
}

class YorNcontain extends StatelessWidget {
  const YorNcontain({
    super.key,
    required this.text,
    required this.colors,
  });
  final String text;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: 160.w,
      decoration: BoxDecoration(
          color: colors, borderRadius: BorderRadius.circular(140.r)),
      child: Center(
          child: Text(
        text,
        style: font16fw700white,
      )),
    );
  }
}

class contain extends StatelessWidget {
  const contain({
    super.key,
    required this.text,
    required this.text1, required this.containon,
  });
  final String text;
  final String text1;
  final bool containon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146.h,
      width: 333.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          top: 16.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text1, style: font16fw700blue),
            Gap(12.h),
            Text(
              '19 Cross, between Hufuf and, Khobar\n676552, India\n+91 8415698625',
              style: font14fw500black,
            ),
            containon? Gap(0.h):Gap(10),
            Row(
              children: [
                Image.asset(
                  'asset/images/sum2.png',
                  height: 16.h,
                  width: 16.w,
                ),
                Gap(8.w),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6E97AE),
                    fontFamily: 'DM_Sans',
                  ),
                ),
                Gap(13.w),
                Image.asset(
                  'asset/images/sum3.png',
                  height: 16.h,
                  width: 16.w,
                ),
                Gap(8.w),
                Text(
                  '12:30 PM',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6E97AE),
                    fontFamily: 'DM_Sans',
                  ),
                ),
                Gap(8.w),
                containon?
                Container(
                  height: 32.h,
                  width: 108.w,
                  decoration: BoxDecoration(
                      color: color1FACF3,
                      borderRadius: BorderRadius.circular(140.r)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.w, top: 6.h),
                    child: Text(
                      'Reschedule',
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'DM_Sans',
                      ),
                    ),
                  ),
                ):
                
                Container()
              ],
            )
          ],
        ),
      ),
    );
  }
}
