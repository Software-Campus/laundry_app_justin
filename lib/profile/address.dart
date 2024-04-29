import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress.dart';
import 'package:laundaryapp/homepages/adress1.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/orderPages/orderid.dart';
import 'package:radio_group_v2/radio_group_v2.dart';
import 'package:slider_button/slider_button.dart';

class AddressFinal extends StatefulWidget {
  const AddressFinal({super.key});

  @override
  State<AddressFinal> createState() => _AddressFinalState();
}

class _AddressFinalState extends State<AddressFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text('Address', style: font20fw700),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 28.w,
              top: 29.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                addres(
                  text: 'Home',
                ),
                Gap(12.h),
                addres(
                  text: 'Office',
                ),
                Gap(365.h),
                container(
                    text: '+Add',
                    height: 64.h,
                    width: 333.w,
                    color: color1FACF3)
              ],
            ),
          )
        ],
      ),
    );
  }
}

class addres extends StatelessWidget {
  const addres({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124.h,
      width: 333.w,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.w,
          top: 10.h,
          right: 12.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text, style: font16fw700black),
                Image.asset(
                  'asset/images/dot.png',
                  height: 35.h,
                  width: 24.w,
                )
              ],
            ),
            Gap(8.h),
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
    );
  }
}
