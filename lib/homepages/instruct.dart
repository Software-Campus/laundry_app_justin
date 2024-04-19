import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/summery.dart';

class InstructPage extends StatefulWidget {
  const InstructPage({Key? key}) : super(key: key);

  @override
  _InstructPageState createState() => _InstructPageState();
}

class _InstructPageState extends State<InstructPage> {
  bool isHotSelected = false;
  bool isColdSelected = false;
  bool isYesSelected = false;
  bool isNoSelected = false;
  bool isScenSelected = false;
  bool isNorSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text(
          'Instructions',
          style: font20fw700,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, top: 37.h, right: 24.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Water', style: font16fw700black),
              Gap(24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isHotSelected = true;
                        isColdSelected = false;
                      });
                    },
                    child: Round(
                      isSelected: isHotSelected,
                      image: isHotSelected
                          ? 'asset/images/in1.png'
                          : 'asset/images/in12.png',
                      text: "Hot",
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isHotSelected = false;
                        isColdSelected = true;
                      });
                    },
                    child: Round1(
                      isSelected: isColdSelected,
                      image1: isColdSelected
                          ? 'asset/images/in11.png'
                          : 'asset/images/in2.png',
                      text1: 'Cold',
                    ),
                  ),
                ],
              ),
              Gap(40.h),
              Text(
                'Fabric Softener',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: 'DM_Sans',
                ),
              ),
              Gap(24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isNoSelected = false;
                        isYesSelected = true;
                      });
                    },
                    child: Round1(
                      isSelected: isYesSelected,
                      image1: isYesSelected
                          ? 'asset/images/in10.png'
                          : 'asset/images/in3.png',
                      text1: 'Yes',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isNoSelected = true;
                        isYesSelected = false;
                      });
                    },
                    child: Round(
                      isSelected: isNoSelected,
                      image: isNoSelected
                          ? 'asset/images/in4.png'
                          : 'asset/images/in9.png',
                      text: "No",
                    ),
                  ),
                ],
              ),
              Gap(40.h),
              Text(
                'Fabric Softener',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: 'DM_Sans',
                ),
              ),
              Gap(24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isNorSelected = false;
                        isScenSelected = true;
                      });
                    },
                    child: Round1(
                      isSelected: isScenSelected,
                      image1: isScenSelected
                          ? 'asset/images/in8.png'
                          : 'asset/images/in5.png',
                      text1: 'Scented',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isNorSelected = true;
                        isScenSelected = false;
                      });
                    },
                    child: Round(
                      isSelected: isNorSelected,
                      image: isNorSelected
                          ? 'asset/images/in6.png'
                          : 'asset/images/in7.png',
                      text: "Normal",
                    ),
                  ),
                ],
              ),
              Gap(40.h),
              Container(
                height: 145.h,
                width: 333.w,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(12.r)),
                child: TextField(
                  style: font16fw700black,maxLength:100,
                  maxLines: 25,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    hintText: 'Enter notes here',
                    hintStyle: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6E97AE),
                      fontFamily: 'DM_Sans',
                    ),
                  ),
                ),
              ),
              Gap(43.h),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SummaryPage(),
                      ));
                },
                child: Container(
                  height: 64.h,
                  width: 333.w,
                  decoration: BoxDecoration(
                    color: Color(0xff1FACF3),
                    borderRadius: BorderRadius.circular(140),
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'DM_Sans',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Round1 extends StatelessWidget {
  const Round1({
    super.key,
    required this.isSelected,
    required this.image1,
    required this.text1,
  });

  final bool isSelected;
  final String image1;
  final String text1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58.h,
      width: 154.w,
      decoration: BoxDecoration(
        color: Colors.white,
        border: isSelected
            ? Border.fromBorderSide(BorderSide(color: Colors.blue))
            : Border.fromBorderSide(BorderSide(color: Colors.white)),
        borderRadius: BorderRadius.circular(44.r),
      ),
      child: Row(
        children: [
          Gap(4.w),
          Container(
            height: 46.h,
            width: 46.w,
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue : Color(0xffECF3F6),
              borderRadius: BorderRadius.circular(54.r),
            ),
            child: Center(
              child: Image.asset(
                image1,
                fit: BoxFit.cover,
                height: 26.h,
                width: 26.w,
              ),
            ),
          ),
          Gap(29.w),
          Text(
            text1,
            style: font16fw700black,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class Round extends StatelessWidget {
  const Round({
    super.key,
    required this.isSelected,
    required this.image,
    required this.text,
  });

  final bool isSelected;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 58.h,
        width: 154.w,
        decoration: BoxDecoration(
          color: Colors.white,
          border: isSelected
              ? Border.fromBorderSide(BorderSide(
                  color: Colors.blue,
                ))
              : Border.fromBorderSide(BorderSide(color: Colors.white)),
          borderRadius: BorderRadius.circular(44.r),
        ),
        child: Row(
          children: [
            Gap(4.w),
            Container(
              height: 46.h,
              width: 46.w,
              decoration: BoxDecoration(
                color: isSelected ? Color(0xff1FACF3) : Color(0xffECF3F6),
                borderRadius: BorderRadius.circular(54.r),
              ),
              child: Center(
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                  height: 26.h,
                  width: 26.w,
                ),
              ),
            ),
            Gap(29.w),
            Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                fontFamily: 'DM_Sans',
              ),
            )
          ],
        ),
      ),
    );
  }
}
