import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/maps/map1.dart';
import 'package:laundaryapp/orderPages/orderid.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'asset/images/map.png',
                height: 824.h,
                width: 381.w,
                fit: BoxFit.fitHeight,
              )),
          Padding(
            padding: EdgeInsets.only(top: 45.h, left: 18.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'asset/images/backarrow.png',
                    height: 43.h,
                    width: 43.w,
                  ),
                  Gap(24.h),
                  Center(
                    child: Container(
                      height: 54.h,
                      width: 333.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 35.w),
                        child: TextField(
                          style: font16fw400black,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              hintText: 'Search for your location',
                              suffixIcon: Icon(Icons.search),
                              hintStyle: font15fw500clr8391A1),
                        ),
                      ),
                    ),
                  ),
                  Gap(147.h),
                  Center(
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 56.h,
                          width: 286.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r)),
                          child: Center(
                              child: Column(
                            children: [
                              Text(
                                '319 Cross, between Hufuf and, Al \nKhob...',
                                style: font14fw500black,
                                textAlign: TextAlign.center,
                              ),
                             
                            ],
                          )),
                        ),
                         Positioned(
                              
                              left: 130.w,
                              bottom: -9.h,
                              child: Transform.rotate(
                                angle: .7854,
                                child: Container(
                                  height: 18.h,
                                  width: 18.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.rectangle),
                                ),
                              ),
                            )
                      ],
                    ),
                  ),
                  Gap(23.h),
                  Center(
                    child: Image.asset(
                      'asset/images/pin.png',
                      height: 53.h,
                      width: 31.w,
                    ),
                  ),
                  Gap(246.h),
                  Center(
                      child: Text(
                    'Move the pin to adjust',
                    style: font16fw700black,
                  )),
                  Gap(20.h),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MapPage1(),
                            ));
                      },
                      child: container(
                          text: 'Confirm',
                          height: 64.h,
                          width: 333.w,
                          color: color1FACF3),
                    ),
                  ),
                  Gap(27.h)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
