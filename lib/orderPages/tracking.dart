import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(106.h),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(20.r))),
          title: Text(
            'Tracking',
            style: font24fw700black,
          ),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 16.h, left: 24.w, bottom: 14.h),
          child: Container(
            height: 756.h,
            width: 333.w,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Gap(10.h),
                      Text(
                        'Id: 152589',
                        style: font16fw500black,
                      ),
                      Gap(16.h),
                      Image.asset(
                        'asset/images/wasmach.png',
                        height: 244.h,
                        width: 244.w,
                      ),
                      Gap(26.h),
                      Text(
                        '20 min',
                        style: font24fw700black,
                      ),
                      Gap(2.h),
                      Text(
                        'Estimated delivery time',
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffA0A5BA),
                          fontFamily: 'DM_Sans',
                        ),
                      ),
                      Gap(26.h),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Order Status',
                        style: font14fw500black,
                      ),
                      Gap(24.h),
                      raw1(image: 'asset/images/tr1.png',
                      text:'Apr 03' ,
                      text1:'Scheduled' ,),Gap(30.h),
                      raw1(image: 'asset/images/tr2.png',
                      text:'Apr 04' ,
                      text1:'Picked up' ,),Gap(30.h),
                      raw1(image: 'asset/images/tr3.png',
                      text:'Apr 04' ,
                      text1:'Washing' ,),Gap(30.h),
                      raw1(image: 'asset/images/tr4.png',
                      text:'Apr 05' ,
                      text1:'Out for delivery' ,),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class raw1 extends StatelessWidget {
  const raw1({
    super.key,
    required this.image,
    required this.text,
    required this.text1,
  });
  final String image;
  final String text;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 51.h,
          width: 51.w,
        ),
        Gap(20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xffA0A5BA),
                fontFamily: 'DM_Sans',
              ),
            ),
            Text(
              text1,
              style: font14fw500black,
            )
          ],
        )
      ],
    );
  }
}
