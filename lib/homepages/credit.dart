import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/booking.dart';
import 'package:laundaryapp/profile/prodetails.dart';
import 'package:laundaryapp/screen/splashregister.dart';

class CreditPage extends StatefulWidget {
  const CreditPage({super.key});

  @override
  State<CreditPage> createState() => _CreditPageState();
}

class _CreditPageState extends State<CreditPage> {
  bool saveon = false;
  int select=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text('Credit', style: font20fw700),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 34.w, right: 24.w,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        select=1;
                      });
                    },
                    child:select==1? Image.asset(
                      'asset/images/visa.png',
                      height: 100.h,
                      width: 323.w,
                    ):Image.asset(
                      'asset/images/visaa.png',
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
                    child:select==2? Image.asset(
                      'asset/images/visaa1.png',
                      height: 100.h,
                      width: 323.w,
                    ): Image.asset(
                      'asset/images/visa1.png',
                      height: 100.h,
                      width: 323.w,
                    ),
                  ),
                  Gap(24.h),
                  Text(
                    'Or add new card details',
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
                  Gap(12.h),
                  Regist(text: 'Card number',control: password,),
                  Gap(12.h),
                  Padding(
                    padding: EdgeInsets.only(left: 17.w),
                    child: Row(
                      children: [
                        contCVV(
                          text1: 'Cvv',
                        ),
                        Gap(8.w),
                        contCVV(text1: 'Exp'),
                      ],
                    ),
                  ),
                  
                  Padding(
                    padding:  EdgeInsets.only(left: 10.w,top: 12.h),
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
              padding: EdgeInsets.only(left: 24.w, top: 74.h,right: 24.w,),
              child: SizedBox(
                height: 64.h,
                width: 333.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: color1FACF3,),
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

class contCVV extends StatelessWidget {
  const contCVV({
    super.key,
    required this.text1,
  });
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: 161.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(140.r),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 35.w),
        child: Opacity(
          opacity: 0.5,
          child: TextField(
            style: font16fw700black,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderSide: BorderSide.none),
                hintText: text1,
                hintStyle: font15fw500clr8391A1),
          ),
        ),
      ),
    );
  }
}
