import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/instruct.dart';
import 'package:laundaryapp/homepages/summery.dart';
import 'package:laundaryapp/orderPages/orderid.dart';

class MapPage1 extends StatefulWidget {
  const MapPage1({super.key});

  @override
  State<MapPage1> createState() => _MapPage1State();
}

class _MapPage1State extends State<MapPage1> {
  int SelectedOne = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              'asset/images/map1.png',
              height: 824.h,
              width: 381.w,
              fit: BoxFit.fitWidth,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 45.h, left: 18.w),
                  child: Row(
                    children: [
                      Image.asset(
                        'asset/images/backarrow.png',
                        height: 43.h,
                        width: 43.w,
                      ),
                      Gap(171.w),
                      Container(
                        height: 44.h,
                        width: 131.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(40.r)),
                        child: Row(
                          children: [
                            Gap(11.w),
                            Image.asset(
                              'asset/images/location.png',
                              height: 22.h,
                              width: 22.w,
                            ),
                            Text(
                              'Edit on Map',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: Colors.blue,
                                fontFamily: 'DM_Sans',
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Gap(64.h),
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
                    'asset/images/pin1.png',
                    height: 53.h,
                    width: 31.w,
                  ),
                ),
                Gap(119.h),
                Container(
                  height: 584.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                      )),
                  child: Padding(
                    padding: EdgeInsets.only(top: 22.h, left: 14.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'asset/images/location.png',
                              height: 28.h,
                              width: 28.w,
                            ),
                            Gap(14.w),
                            Text(
                              'Dammam',
                              style: font24fw700black,
                            )
                          ],
                        ),
                        Gap(25.h),
                        maptextfield(
                          image: 'asset/images/buildings.png',
                          text: 'Apartment/ building/ flat name',
                        ),
                        Gap(32.h),
                        maptextfield(
                          image: 'asset/images/buliding.png',
                          text: 'Floor number',
                        ),
                        Gap(32.h),
                        Row(
                          children: [
                            Gap(2.w),
                            Image.asset(
                              'asset/images/call1.png',
                              height: 20.h,
                              width: 20.w,
                            ),
                            Gap(20.w),
                            SizedBox(
                              width: 309.w,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                      color: Colors.blue,
                                    )),
                                    labelText: 'Contact details',
                                    labelStyle: font12fw400clr6E97AE),
                              ),
                            )
                          ],
                        ),
                        Gap(34.h),
                        Row(
                          children: [
                            Text(
                              'Save For',
                              style: font12fw500black,
                            ),
                            Gap(16.w),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    SelectedOne = 1;
                                  });
                                },
                                child: map1(
                                  Selected: SelectedOne == 1,
                                  text: 'Home',
                                )),
                            Gap(16.w),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    SelectedOne = 2;
                                  });
                                },
                                child: map1(
                                  Selected: SelectedOne == 2,
                                  text: 'Office',
                                )),
                            Gap(16.w),
                            GestureDetector(
                                onTap: () {
                                  setState(() {});
                                },
                                child: map1(
                                  Selected: SelectedOne == 3,
                                  text: 'Other',
                                )),
                          ],
                        ),
                        Gap(25.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SummaryPage(),
                                ));
                          },
                          child: container(
                              text: 'Save',
                              height: 64.h,
                              width: 333.w,
                              color: color1FACF3),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class map1 extends StatelessWidget {
  const map1({
    super.key,
    required this.Selected,
    required this.text,
  });

  final bool Selected;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32.h,
      width: 65.w,
      decoration: BoxDecoration(
          color: Selected ? Colors.blue : Colors.white,
          borderRadius: BorderRadius.circular(30.r),
          border: Selected
              ? Border.all(color: Colors.white)
              : Border.all(color: Colors.black)),
      child: Center(
        child: Text(
          text,
          style: Selected ? font12fw500 : font12fw500black,
        ),
      ),
    );
  }
}

class maptextfield extends StatelessWidget {
  const maptextfield({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(2.w),
        Image.asset(
          image,
          height: 20.h,
          width: 20.w,
        ),
        Gap(20.w),
        SizedBox(
          width: 309.w,
          child: TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                hintText: text,
                hintStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff6E97AE),
                  fontFamily: 'DM_Sans',
                )),
          ),
        )
      ],
    );
  }
}
