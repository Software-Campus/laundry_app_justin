import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/orderPages/orderid.dart';
import 'package:laundaryapp/orderPages/orderid1.dart';
import 'package:laundaryapp/orderPages/tracking.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorECF3F6,
        title: Text(
                'History',
                style: font24fw700black,
            
              ),centerTitle: true,),
     
      backgroundColor: colorECF3F6,
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 16.h, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding:  EdgeInsets.only(left: 210.w),
                child: Container(
                  height: 37.h,
                  width: 123.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18.5.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'All Orders',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6E97AE),
                          fontFamily: 'DM_Sans',
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 20.sp,
                        color: Color(0xff6E97AE),
                      )
                    ],
                  ),
                ),
              ),
              Gap(32.h),
              contain2(
                image: 'asset/images/Gp1.png',
                text1: 'Ironing',
                text2: 'Completed',
                color: Color(0xff30D472),
                text3: 'Add Rating',
                isvisible: true,
                isvisible1: true,
                details: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderidPage1(),
                      ));
                },
                tracking:  () {
                  showModalBottomSheet(
                    scrollControlDisabledMaxHeightRatio: 0.65,
                    context: context,
                    builder: (context) {
                      return showsheet();
                    },
                  );
                },
              ),
              Gap(18.h),
              contain2(
                image: 'asset/images/Gp2.png',
                text1: 'ironing',
                text2: 'Completed',
                color: Color(0xff30D472),
                text3: 'Add rating',
                isvisible: true,
                isvisible1: true,
                details: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderidPage1(),
                      ));
                },
                tracking: () {
                  showModalBottomSheet(
                    scrollControlDisabledMaxHeightRatio: 0.65,
                    context: context,
                    builder: (context) {
                      return showsheet();
                    },
                  );
                },
              ),
              Gap(18.h),
              contain2(
                image: 'asset/images/Gp2.png',
                text1: 'ironing',
                text2: 'Completed',
                color: Color(0xff30D472),
                text3: 'Add rating',
                isvisible: true,
                isvisible1: true,
                details: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderidPage1(),
                      ));
                },
                tracking: () {
                  showModalBottomSheet(
                    scrollControlDisabledMaxHeightRatio: 0.65,
                    context: context,
                    builder: (context) {
                      return showsheet();
                    },
                  );
                },
              ),
              Gap(18.h),
              contain2(
                image: 'asset/images/Gp1.png',
                text1: 'Washing',
                text2: 'Cancelled',
                color: Color(0xffD14646),
                text3: 'Tracking',
                isvisible: false,
                isvisible1: false,
                details: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OrderPage(),
                      ));
                },
              ),
              Gap(14.h)
            ],
          ),
        ),
      ),
    );
  }
}

