import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/booking.dart';

class AddressPage1 extends StatelessWidget {
  const AddressPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffECF3F6),
        body: Column(
          children: [
            Container(
              height: 124.h,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: EdgeInsets.only(top: 59.h, left: 16.w),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        size: 22.sp,
                      ),
                    ),
                    Gap(12.w),
                    SizedBox(
                      height: 48.h,
                      width: 309.w,
                      child: TextField(
                        decoration: InputDecoration(
                            fillColor: Color(0xffECF3F6),
                            filled: true,
                            hintText: 'Dammam',
                            helperStyle: font16fw700black,
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12.r))),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Gap(34.h),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BookingconfirmPage(),
                    ));
              },
              child: Locate(
                text: 'Dammam',
              ),
            ),
            Gap(26.h),
            Locate(text: 'Dammam Port'),
            Gap(26.h),
            Locate(text: 'Dammam Tower'),
          ],
        ));
  }
}

class Locate extends StatelessWidget {
  const Locate({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(16.w),
        Container(
          height: 34.h,
          width: 34.w,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10.r)),
          child: Icon(
            Icons.location_on,
            size: 18.sp,
          ),
        ),
        Gap(12.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: font14fw500black,
            ),
            Text(
              '319 Cross, between Hufuf and, Al Khob...',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6E97AE),
                  fontFamily: 'DM_Sans'),
            )
          ],
        )
      ],
    );
  }
}
