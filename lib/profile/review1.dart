import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/orderPages/orderid1.dart';
import 'package:laundaryapp/orderPages/review.dart';

import 'dashboard.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffECF3F6),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(76.h),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20.r))),
            title: Text(
              'Reviews',
              style: font20fw700black,
            ),
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 219.w, right: 16.w, top: 8.h),
                child: Container(
                  height: 37.h,
                  width: 146.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18.5.r)),
                  child: Row(
                    children: [
                      Gap(8.w),
                      Text(
                        '4',
                        style: font14fw5006E97AE,
                      ),
                      Gap(3.w),
                      Image.asset(
                        'asset/images/star1.png',
                        height: 13.h,
                        width: 13.w,
                        color: Color(0xff6E97AE),
                      ),
                      Gap(6.w),
                      Text('and above', style: font14fw5006E97AE),
                      Gap(8.w),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.sp,
                        color: Color(0xff6E97AE),
                      )
                    ],
                  ),
                ),
              ),
              Gap(8.h),
              reviewcontain(image: 'asset/images/re1.png',
              text: 'Angelina',
              text1: 'Yesterday',),
              Gap(12.h),
              reviewcontain(image: 'asset/images/re2.png',
              text: 'Samuel',
              text1: 'Yesterday',),
              Gap(12.h),
              reviewcontain(image: 'asset/images/re3.png',
              text: 'Gareth Bale',
              text1: '12 Mar 2024',),
              Gap(12.h),
              reviewcontain(image: 'asset/images/re4.png',
              text: 'Sebastian',
              text1: '12 Mar 2024',),
              Gap(12.h),
            ],
          ),
        ));
  }
}

class reviewcontain extends StatelessWidget {
  const reviewcontain({
    super.key, required this.image, required this.text, required this.text1,
  });
  final String image;
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 179.h,
      width: 349.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(top: 18.h, left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      image,
                      height: 46.h,
                      width: 46.w,
                    ),
                    Gap(8.w),
                    Column(
                      children: [
                        Text(
                          text,
                          style: font16fw500black,
                        ),
                        Text(
                          text1,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffBBBBBB),
                            fontFamily: 'DM_Sans',
                          ),
                        ),
                      ],
                    ),
                    
                  ],
                ),
                Row(
                  children: [
                    star(
                        color: Color(0xffFFC107),
                        height: 18.h,
                        width: 18.w),
                    star(
                        color: Color(0xffFFC107),
                        height: 18.h,
                        width: 18.w),
                    star(
                        color: Color(0xffFFC107),
                        height: 18.h,
                        width: 18.w),
                    star(
                        color: Color(0xffFFC107),
                        height: 18.h,
                        width: 18.w),
                    star(
                        color: Color(0xffFFC107),
                        height: 18.h,
                        width: 18.w),
                  ],
                ),
              ],
            ),
            
            Gap(8.h),
            Text(
              'Outstanding service at Laundrybin! \nClothes return fresh, team is professional, and pickup/delivery is convenient. Highly recommend for top-notch laundry!',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6E97AE),
                fontFamily: 'DM_Sans',
              ),
            ),
            Gap(12.h),
          ],
        ),
      ),
    );
  }
}
