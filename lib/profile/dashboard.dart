import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffECF3F6),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(96.h),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20.r))),
            title: Text(
              'Dashboard',
              style: font20fw700black,
            ),
            centerTitle: true,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Overview',
                    style: font20fw700black,
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
                        Image.asset(
                          'asset/images/calendar.png',
                          height: 20.h,
                          width: 20.w,
                        ),
                        Text(
                          'Jan-Mar',
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
            ),
            Gap(20.h),
            Container(
              child: GridView.count(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 7,
                mainAxisSpacing: 7,
                children: [
                  dashboard(
                    image: 'asset/images/calend.png',
                    text: 'Total bookings',
                    text1: '21',
                    text2: 'Than last month',
                    text3: true,
                    image1: false,
                  ),
                  dashboard(
                    image: 'asset/images/star1.png',
                    text: 'Your Reviews',
                    text1: '21',
                    text2: '5 last month',
                    text3: false,
                    image1: true,
                  ),
                  dashboard(
                    image: 'asset/images/pre.png',
                    text: 'Coupon Discount',
                    text1: '500',
                    text2: 'Than last month',
                    text3: true,
                    image1: false,
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class dashboard extends StatelessWidget {
  const dashboard({
    super.key,
    required this.image,
    required this.text,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image1,
  });
  final String image;
  final String text;
  final String text1;
  final String text2;
  final bool text3;
  final bool image1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 147.h,
      width: 171.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(left: 13.w, top: 13.h, right: 4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 31.h,
                  width: 31.w,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 239, 247),
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Center(
                    child: Image.asset(
                      image,
                      height: 19.h,
                      width: 19.w,
                    ),
                  ),
                ),
                image1
                    ? Image.asset(
                        'asset/images/dot.png',
                        height: 35.h,
                        width: 18.w,
                      )
                    : Row()
              ],
            ),
            Gap(7.h),
            Text(
              text,
              style: font16fw700black,
            ),
            Gap(10.h),
            Row(
              children: [
                Text(
                  text1,
                  style: font20fw700black,
                ),
                Gap(16.w),
                text3
                    ? Row(
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            color: Colors.green,
                            size: 12.sp,
                          ),
                          Text(
                            '13%',
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.green,
                              fontFamily: 'DM_Sans',
                            ),
                          )
                        ],
                      )
                    : Row(),
              ],
            ),
            Gap(6.h),
            Text(
              text2,
              style: font16fw500black,
            )
          ],
        ),
      ),
    );
  }
}
