import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';

class LaundryPage extends StatelessWidget {
  const LaundryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffECF3F6),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(71.h),
          child: AppBar(
            title: Row(
              children: [
                Image.asset(
                  'asset/images/Logo.png',
                  height: 24.h,
                  width: 24.w,
                ),
                Gap(15.3.w),
                Text(
                  'Laundrybin',
                  style: TextStyle(
                      color: Color(0xff567177),
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: Image.asset(
                  'asset/images/call.png',
                  height: 28.h,
                  width: 28.w,
                ),
              )
            ],
            leading: Icon(
              Icons.arrow_back_ios_new,
              size: 24.sp,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Gap(24.h),
              Center(
                  child: Text(
                'Jan 1, 2024',
                style: font14fw500black,
              )),
              Gap(16.h),
              messager(
                text: 'Hi, I need to schedule a laundry \npickup for tomorrow.',
                text1: '11:32 AM',
                height: 79.h,
              ),
              Gap(12.h),
              Padding(
                padding: EdgeInsets.only(left: 104.w),
                child: Container(
                  height: 79.h,
                  width: 261.w,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12.r),
                          bottomRight: Radius.circular(12.r),
                          topLeft: Radius.circular(12.r))),
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w, top: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'We have availability tomorrow. \nWhat time works best for you',
                          style: font14fw500,
                        ),
                        Gap(2.h),
                        Text(
                          '11:33 AM',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                            fontFamily: 'DM_Sans',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Gap(12.h),
              messager(
                text: 'Would 10 AM work for pickup?',
                text1: '2 minutes ago',
                height: 59.h,
              ),
              Gap(346.h),
              Container(
                height: 54.h,
                width: 349.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(140.r),
                    color: Colors.white),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        style: font16fw700black,
                        decoration: InputDecoration(
                            border:
                                OutlineInputBorder(borderSide: BorderSide.none),
                            hintText: 'Message...',
                            hintStyle: font15fw500clr8391A1),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 7.w),
                      child: Container(
                        height: 42.h,
                        width: 42.w,
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: 24.sp,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class messager extends StatelessWidget {
  const messager({
    super.key,
    required this.text,
    required this.text1,
    required this.height,
  });
  final String text;
  final String text1;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(16.w),
        Image.asset(
          'asset/images/Logo.png',
          height: 35.h,
          width: 35.w,
        ),
        Gap(15.w),
        Container(
          height: height,
          width: 231.w,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12.r),
                  bottomRight: Radius.circular(12.r),
                  topRight: Radius.circular(12.r))),
          child: Padding(
            padding: EdgeInsets.only(left: 12.w, top: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: font14fw500black,
                ),
                Gap(2.h),
                Text(
                  text1,
                  style: font12fw400clr6E97AE,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
