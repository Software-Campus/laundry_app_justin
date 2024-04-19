import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress.dart';
import 'package:laundaryapp/homepages/credit.dart';
import 'package:laundaryapp/homepages/upi.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({super.key});

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text('Offers', style: font20fw700),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 32.h),
        child: Column(
          children: [
            Container(
              height: 91.h,
              width: 333.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.w, top: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Free delivery on every orders for\n6 months',
                          style: font14fw500black,
                        ),
                        Text(
                          '₹499',
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
                  Gap(59.w),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: isOn,
                    onChanged: (value) {
                      setState(() {
                        isOn = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            Gap(12.h),
            Container(
              height: 91.h,
              width: 333.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.r)),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.w, top: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Free delivery on every orders for\n6 months',
                          style: font14fw500black,
                        ),
                        Text(
                          '₹499',
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
                  Gap(59.w),
                  Checkbox(
                    activeColor: Colors.blue,
                    value: isOn,
                    onChanged: (value) {
                      setState(() {
                        isOn = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, right: 212.w),
              child: Text('Payment method', style: font16fw700black),
            ),
            Gap(16.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreditPage(),
                    ));
              },
              child: Container(
                height: 64.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(3.w),
                    Container(
                      height: 58.h,
                      width: 58.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 180, 225, 248),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Image.asset(
                          'asset/images/in14.png',
                          height: 32.h,
                          width: 34.w,
                        ),
                      ),
                    ),
                    Gap(23.w),
                    Text(
                      'Credit Card',
                      style: font16fw700black,
                    ),
                    Gap(128.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20.sp,
                    ),
                  ],
                ),
              ),
            ),
            Gap(12.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpiPage(),
                    ));
              },
              child: Container(
                height: 64.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Gap(3.w),
                    Container(
                      height: 58.h,
                      width: 58.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 213, 164),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Image.asset(
                          'asset/images/in15.png',
                          height: 32.h,
                          width: 34.w,
                        ),
                      ),
                    ),
                    Gap(23.w),
                    Text(
                      'UPI',
                      style: font16fw700black,
                    ),
                    Gap(188.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20.sp,
                    ),
                    Gap(10.w),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
