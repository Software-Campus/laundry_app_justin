import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/orderPages/orderid1.dart';

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
              'My Reviews',
              style: font20fw700black,
            ),
            centerTitle: true,
          ),
        ),
        body: Column(
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
              ),
            ),
            Gap(8.h),
            review(
              text: 'Yesterday',
            ),
            Gap(12.h),
            review(
              text: 'Wednesday',
            ),
            Gap(12.h),
            review(
              text: '12 Dec 2024',
            ),
            
          ],
        ));
  }
}

class review extends StatelessWidget {
  const review({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 199.h,
      width: 349.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(top: 18.h, left: 16.w, right: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    star(color: Color(0xffFFC107), height: 18.h, width: 18.w),
                    star(color: Color(0xffFFC107), height: 18.h, width: 18.w),
                    star(color: Color(0xffFFC107), height: 18.h, width: 18.w),
                    star(color: Color(0xffFFC107), height: 18.h, width: 18.w),
                    star(color: Color(0xffFFC107), height: 18.h, width: 18.w),
                  ],
                ),
                Text(
                  text,
                  style: font16fw500black,
                )
              ],
            ),
            Gap(8.h),
            Text(
              'Outstanding service at Laundrybin! Clothes return fresh, team is professional, and pickup/delivery is convenient. Highly recommend for top-notch laundry!',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: Color(0xff6E97AE),
                fontFamily: 'DM_Sans',
              ),
            ),
            Gap(12.h),
            Container(
              height: 31.h,
              width: 107.w,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 254, 226, 226),
                  borderRadius: BorderRadius.circular(8.r)),
              child: Center(
                child: Text(
                  'Edit Review',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffFE725C),
                    fontFamily: 'DM_Sans',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
