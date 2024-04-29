import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/orderPages/orderid.dart';
import 'package:slider_button/slider_button.dart';

class OrderidPage1 extends StatefulWidget {
  const OrderidPage1({super.key});

  @override
  State<OrderidPage1> createState() => _OrderidPage1State();
}

class _OrderidPage1State extends State<OrderidPage1> {
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
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    scrollControlDisabledMaxHeightRatio: 0.65,
                    context: context,
                    builder: (context) {
                      return showsheet();
                    },
                  );
                },
                child: Container(
                  height: 93.h,
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
                        Text('Add Rating', style: font16fw700blue),
                        Gap(8.h),
                        Row(
                          children: [
                            Gap(45.w),
                            star(
                              color: Color(0xffE6F2F3),
                              height: 36.h,
                              width: 36.w,
                            ),
                            Gap(8.w),
                            star(
                              color: Color(0xffE6F2F3),
                              height: 36.h,
                              width: 36.w,
                            ),
                            Gap(8.w),
                            star(
                              color: Color(0xffE6F2F3),
                              height: 36.h,
                              width: 36.w,
                            ),
                            Gap(8.w),
                            star(
                              color: Color(0xffE6F2F3),
                              height: 36.h,
                              width: 36.w,
                            ),
                            Gap(8.w),
                            star(
                              color: Color(0xffE6F2F3),
                              height: 36.h,
                              width: 36.w,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Gap(12.h),
              contain(
                text1: 'Pick Up',
                text: '25-03-2023',
                containon: false,
              ),
              Gap(13.h),
              contain(
                text1: 'Delivery (Express)',
                text: '26-03-2023',
                containon: false,
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
            ],
          ),
        ),
      ),
    );
  }
}

class star extends StatelessWidget {
  const star({
    super.key,
    required this.color, required this.height, required this.width,
  });
  final Color color;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'asset/images/Star.png',
      height: height,
      width: width,
      color: color,
    );
  }
}
