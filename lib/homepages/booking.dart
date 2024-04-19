import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress.dart';
import 'package:laundaryapp/homepages/home.dart';

class BookingconfirmPage extends StatelessWidget {
  const BookingconfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1FACF3,
      body: Padding(
        padding:  EdgeInsets.only(left: 24.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 225.h, left: 53.w,right: 51.w),
              child: Image.asset(
                'asset/images/bookc.png',
                height: 226.h,
                width: 253.w,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45.w, top: 43.h,right: 64.w),
              child: Text(
                'Your Booking is\nConfirmed',
                style: TextStyle(
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: 'DM_Sans',
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Gap(166.h),
             SizedBox(
               height: 64.h,
               width: 333.w,
               child: ElevatedButton(
                   onPressed: () {
                     Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => HomePage(),
                         ));
                   },
                   child: Text(
                     'Back To home',
                     style: TextStyle(
                         fontSize: 16.sp,
                         fontWeight: FontWeight.w700,
                         color: Color(0xff1FACF3)),
                   )),
             ),
             
          ],
        ),
      ),
    );
  }
}
