import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/orderPages/orderid.dart';
import 'package:laundaryapp/orderPages/orderid1.dart';
import 'package:laundaryapp/orderPages/tracking.dart';

class NotifyPage extends StatelessWidget {
  const NotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(140.sp),
        child: Container(
          height: 64.h,
          margin: EdgeInsets.only(bottom: 27.h, left: 24.w, right: 24.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(140.sp),
          ),
          clipBehavior: Clip.hardEdge,
          child: NavigationBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            indicatorColor: Colors.white,
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.grid_view_rounded, color: Color(0xff6E97AE)),
                  selectedIcon: Icon(
                    Icons.grid_view_rounded,
                    color: Colors.blue,
                    size: 28.sp,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Image.asset(
                    'asset/images/calendar.png',
                    height: 28.h,
                    width: 28.w,
                    color: color1FACF3,
                  ),
                  selectedIcon: Image.asset(
                    'asset/images/calendar.png',
                    height: 28.h,
                    width: 28.w,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Icon(Icons.notifications,
                      size: 28.sp, color: Color(0xff6E97AE)),
                  selectedIcon: Icon(
                    Icons.notifications,
                    color: Colors.blue,
                    size: 28.sp,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: Icon(
                    Icons.person,
                    color: Color(0xff6E97AE),
                    size: 28.sp,
                  ),
                  selectedIcon: Icon(
                    Icons.person,
                    color: Colors.blue,
                    size: 28.sp,
                  ),
                  label: ''),
            ],
          ),
        ),
      ),
      backgroundColor: colorECF3F6,
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 62.h, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Notifications',
                style: font24fw700black,
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.w, top: 32.h),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OrderPage(),
                                ));
                  },
                    child: notify(
                  text:
                      'Your laundry booking on 12 DEC 2024\nat 02:00 PM has been successful !',
                )),
              ),
              Gap(16.h),
              Opacity(
                  opacity: 0.20,
                  child: Divider(
                    color: Color(0xff6E97AE),
                  )),
              Gap(16.h),
              notify(
                  text:
                      'Cancelled: “Appointment for 12 DEC\n2024 at 02:00 PM. Thank you."'),
              Gap(16.h),
              Opacity(
                  opacity: 0.20,
                  child: Divider(
                    color: Color(0xff6E97AE),
                  )),
              Gap(16.h),
              notify(
                  text:
                      "Tomorrow: Don't forget laundry \nappointment at 02:00 PM")
            ],
          ),
        ),
      ),
    );
  }
}

class notify extends StatelessWidget {
  const notify({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 54.h,
          width: 54.w,
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Icon(
            Icons.notifications,
            color: Colors.blue,
            size: 28.sp,
          ),
        ),
        Gap(25.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: font14fw500black,
            ),
            Gap(8.h),
            Text(
              '25th Sep 2021 at 3:32 am',
              style: font12fw400clr6E97AE
            )
          ],
        )
      ],
    );
  }
}
