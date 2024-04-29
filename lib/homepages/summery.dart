import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress.dart';
import 'package:laundaryapp/homepages/credit.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/homepages/offers.dart';
import 'package:laundaryapp/homepages/upi.dart';
import 'package:laundaryapp/maps/map.dart';
import 'package:slider_button/slider_button.dart';

class SummaryPage extends StatefulWidget {
  const SummaryPage({super.key});

  @override
  State<SummaryPage> createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  int selected = 1;
  bool isOn = false;
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text('Summery', style: font20fw700),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          top: 32.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 266.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 16.h, right: 12.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Pickup Point', style: font16fw700blue),
                          GestureDetector(
                            onTap:() {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ));
                            }, 
                            child: Icon(Icons.add))
                        ],
                      ),
                      Gap(4.h),
                      Container(
                        height: 97.h,
                        width: 301.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: Colors.blue)),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 8.w, top: 8.h, right: 8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Home',
                                    style: font16fw700black,
                                  ),
                                  Image.asset(
                                    'asset/images/sum1.png',
                                    height: 20.h,
                                    width: 20.w,
                                  )
                                ],
                              ),
                              Text(
                                  '19 Cross, between Hufuf and, Khobar\n676552, India\n+91 8415698625',
                                  style: font14fw500black)
                            ],
                          ),
                        ),
                      ),
                      Gap(10.h),
                      Container(
                        height: 97.h,
                        width: 301.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: Color(0xff6E97AE))),
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 8.w, top: 8.h, right: 8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Office',
                                    style: font16fw700black,
                                  ),
                                  Image.asset(
                                    'asset/images/sum1.png',
                                    height: 20.h,
                                    width: 20.w,
                                  )
                                ],
                              ),
                              Text(
                                  '19 Cross, between Hufuf and, Khobar\n676552, India\n+91 8415698625',
                                  style: font14fw500black)
                            ],
                          ),
                        ),
                      ),
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
                  padding: EdgeInsets.only(
                    left: 16.w,
                    top: 16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Pick Up ', style: font16fw700blue),
                      Gap(12.h),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () async {
                              date = await showDatePicker(
                                    context: context,
                                    firstDate: DateTime.now(),
                                    lastDate: DateTime(2025),
                                  ) ??
                                  DateTime.now();

                              setState(() {});
                            },
                            child: Container(
                              height: 48.h,
                              width: 145.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Color(0xff6E97AE)),
                                  borderRadius: BorderRadius.circular(8.r)),
                              child: Row(
                                children: [
                                  Gap(12.w),
                                  Image.asset(
                                    'asset/images/sum2.png',
                                    height: 16.h,
                                    width: 16.w,
                                  ),
                                  Gap(7.w),
                                  Text(
                                    '${DateFormat('dd-MM-yyyy').format(date)}',
                                    style: font14fw500black,
                                  ),
                                  Gap(8.w),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 14.sp,
                                    color: Color(0xff6E97AE),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Gap(10.w),
                          DropdownMenu(
                            inputDecorationTheme: InputDecorationTheme(
                              constraints:
                                  BoxConstraints.tight(Size.fromHeight(48.h)),
                              isCollapsed: true,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color(0xff6E97AE), width: 0.5.sp),
                                  borderRadius: BorderRadius.circular(8.r)),
                            ),
                            width: 145.w,
                            enableSearch: true,
                            leadingIcon: Icon(
                              Icons.watch_later,
                              color: Color(0xff6E97AE),
                              size: 16.sp,
                            ),
                            dropdownMenuEntries: [
                              DropdownMenuEntry(
                                value: 0,
                                label: '07:00 AM - 08:00 AM',
                              ),
                              DropdownMenuEntry(
                                  value: 1, label: '08:00 AM - 09:00 AM'),
                              DropdownMenuEntry(
                                  value: 2, label: '09:00 AM - 10:00 AM'),
                              DropdownMenuEntry(
                                  value: 3, label: '10:00 AM - 11:00 AM')
                            ],
                            hintText: 'Slot',
                            textStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff6E97AE),
                              fontFamily: 'DM_Sans',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(13.h),
              Container(
                height: 219.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.w,
                    top: 16.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivery ', style: font16fw700blue),
                      ListTileTheme(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        child: ListTile(
                          title: Text(
                            '19 Cross, between Hufuf and, Khobar\n676552, India | +91 8415698625',
                            style: font14fw500black,
                          ),
                          leading: Radio<int>(
                            value: 1,
                            groupValue: selected,
                            onChanged: (value) {
                              selected = value!;
                              setState(() {});
                            },
                            activeColor: color1FACF3,
                          ),
                        ),
                      ),
                      ListTileTheme(
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        child: ListTile(
                          title: Text(
                            'Collect from store',
                            style: font14fw500black,
                          ),
                          leading: Radio<int>(
                            value: 2,
                            groupValue: selected,
                            onChanged: (value) {
                              selected = value!;
                              setState(() {});
                            },
                            activeColor: color1FACF3,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Expected Delivery : ',
                            style: font14fw500black,
                          ),
                          Text(
                            '21 Dec 2024',
                            style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff6E97AE),
                              fontFamily: 'DM_Sans',
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Express Delivery',
                            style: font16fw700black,
                          ),
                          Gap(114.w),
                          Switch.adaptive(
                            activeColor: Colors.white,
                            inactiveThumbColor: Colors.blue,
                            activeTrackColor: color1FACF3,
                            inactiveTrackColor: Colors.white,
                            value: isOn,
                            onChanged: (bool value) {
                              setState(() {
                                isOn = value;
                              });
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(16.h),
              Container(
                height: 112.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coupon',
                        style: font16fw700blue,
                      ),
                      Gap(8.h),
                      Row(
                        children: [
                          Container(
                            height: 48.h,
                            width: 145.w,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff6E97AE)),
                                borderRadius: BorderRadius.circular(12.r)),
                            child: Opacity(
                              opacity: 0.5,
                              child: TextField(
                                style: font16fw700black,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    hintText: 'Enter Code',
                                    hintStyle: font15fw500clr8391A1),
                              ),
                            ),
                          ),
                          Gap(11.w),
                          Container(
                            height: 48.h,
                            width: 145.w,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(12.r)),
                            child: Center(
                                child: Text(
                              'APPLY CODE',
                              style: font14fw500,
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(16.h),
              Container(
                height: 155.h,
                width: 327.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Padding(
                  padding: EdgeInsets.only(top: 18.5.h, left: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OffersPage(),
                              ));
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/images/offer.png',
                              height: 19.h,
                              width: 19.w,
                            ),
                            Gap(8.w),
                            Text(
                              'Offers',
                              style: font16fw700blue,
                            )
                          ],
                        ),
                      ),
                      Gap(8.h),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OffersPage(),
                                ));
                          },
                          child: Row(
                            children: [
                              offer(
                                text:
                                    'Free delivery on every orders for \n6 months',
                                text1: '₹499',
                              ),
                              Gap(12.w),
                              offer(
                                text:
                                    'Free delivery on every orders for \n3 months',
                                text1: '₹299',
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Gap(16.h),
              Stack(
                children: [
                  Image.asset(
                    'asset/images/sum5.png',
                    height: 316.h,
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
                        Row(
                          children: [
                            Text(
                              'Coupon Reduction',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff30D472),
                                fontFamily: 'DM_Sans',
                              ),
                            ),
                            Gap(128.w),
                            Text(
                              '₹50',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff30D472),
                                fontFamily: 'DM_Sans',
                              ),
                            )
                          ],
                        ),
                        Gap(12.h),
                        Row(
                          children: [
                            Text(
                              'Total',
                              style: font16fw700black,
                            ),
                            Gap(231.w),
                            Text(
                              '₹110',
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
              Padding(
                padding: EdgeInsets.only(right: 212.w),
                child: Text('Payment method', style: font16fw700black),
              ),
              Gap(16.h),
              Container(
                height: 64.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Gap(3.w),
                    Container(
                      height: 58.h,
                      width: 58.w,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 186, 234, 238),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Image.asset(
                          'asset/images/in13.png',
                          height: 32.h,
                          width: 32.w,
                        ),
                      ),
                    ),
                    Gap(23.w),
                    Text(
                      'COD',
                      style: font16fw700black,
                    ),
                    Gap(176.w),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20.sp,
                    ),
                    Gap(18.w)
                  ],
                ),
              ),
              Gap(12.h),
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
                        builder: (context) => UpiPage()
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
              Gap(40.h)
            ],
          ),
        ),
      ),
    );
  }
}
