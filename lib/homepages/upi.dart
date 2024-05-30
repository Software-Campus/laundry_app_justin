import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/booking.dart';
import 'package:laundaryapp/profile/prodetails.dart';
import 'package:laundaryapp/screen/splashregister.dart';

class UpiPage extends StatefulWidget {
  const UpiPage({super.key});

  @override
  State<UpiPage> createState() => _UpiPageState();
}

class _UpiPageState extends State<UpiPage> {
  bool saveon = false;
  int select=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text('UPI', style: font20fw700),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 16.h,
                left: 34.w,
                right: 24.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                     onTap: () {
                      setState(() {
                        select=1;
                      });
                    },
                    child: Image.asset(
                      'asset/images/Gpay.png',
                      height: 100.h,
                      width: 323.w,
                    ),
                  ),
                  Gap(12.h),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        select=2;
                      });
                    },
                    child: Image.asset(
                      'asset/images/phpe.png',
                      height: 100.h,
                      width: 323.w,
                    ),
                  ),
                  Gap(24.h),
                  Text(
                    'Or add UPI ID',
                    style: font16fw700black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 17.w,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(16.h),
                  Regist(text: 'Card holder name',control: password,),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 12.h),
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: Colors.blue,
                          value: saveon,
                          onChanged: (value) {
                            setState(() {
                              saveon = value!;
                            });
                          },
                        ),
                        Text(
                          'Save for future',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontFamily: 'DM_Sans',
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 24.w,
                top: 226.h,
                right: 24.w,
              ),
              child: SizedBox(
                height: 64.h,
                width: 333.w,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: color1FACF3,
                        ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BookingconfirmPage(),
                          ));
                    },
                    child: Text(
                      'Pay ₹499',
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
