import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress1.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Address', style: font20fw700),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 86.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12))),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 24.w, top: 14.h, right: 24.w, bottom: 18.h),
                child: SizedBox(
                  height: 54.h,
                  width: 333.w,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xffECF3F6),
                        filled: true,
                        hintText: 'Search for new location',
                        hintStyle: font16fw400black,
                        suffixIcon: GestureDetector(
                           onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddressPage1(),
                      ));
                },
                          child: Icon(
                            Icons.search_sharp,
                            size: 18.sp,
                          ),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12.r))),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 28.w,
                top: 32.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Saved Places',
                    style: font16fw700black,
                  ),
                  Container(
                    height: 124.h,
                    width: 333.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 16.w, top: 16.h, right: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Home', style: font16fw700black),
                              Gap(8.h),
                              Image.asset(
                                'asset/images/sum1.png',
                                height: 18.h,
                                width: 18.w,
                              )
                            ],
                          ),
                          Gap(4.h),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 14.sp,
                              ),
                              Gap(13.w),
                              Text(
                                  '19 Cross, between Hufuf and, Al\n Khobar 34446, Saudi Arabia',
                                  style: font14fw500black),
                            ],
                          ),
                          Gap(8.h),
                          Row(
                            children: [
                              Icon(
                                Icons.phone_outlined,
                                size: 14.sp,
                              ),
                              Gap(13.w),
                              Text('+966 8415698625', style: font14fw500black),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Gap(12.h),
                  Container(
                    height: 124.h,
                    width: 333.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r)),
                    child: Padding(
                      padding:
                          EdgeInsets.only(left: 16.w, top: 16.h, right: 12.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Home', style: font16fw700black),
                              Gap(8.h),
                              Image.asset(
                                'asset/images/sum1.png',
                                height: 18.h,
                                width: 18.w,
                              )
                            ],
                          ),
                          Gap(4.h),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 14.sp,
                              ),
                              Gap(13.w),
                              Text(
                                  '19 Cross, between Hufuf and, Al\n Khobar 34446, Saudi Arabia',
                                  style: font14fw500black),
                            ],
                          ),
                          Gap(8.h),
                          Row(
                            children: [
                              Icon(
                                Icons.phone_outlined,
                                size: 14.sp,
                              ),
                              Gap(13.w),
                              Text('+966 8415698625', style: font14fw500black),
                            ],
                          )
                        ],
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
