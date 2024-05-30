import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/orderPages/orderid.dart';
import 'package:laundaryapp/screen/splashregister.dart';
import 'package:slider_button/slider_button.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}
 TextEditingController name=TextEditingController();
  TextEditingController profile=TextEditingController();
   TextEditingController password=TextEditingController();

class _ProfileDetailsState extends State<ProfileDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffECF3F6),
        appBar: AppBar(
          backgroundColor: Color(0xffECF3F6),
          title: Text('Profile Details', style: font20fw700),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 36.h, left: 24.w, right: 24.w),
                child: Column(
                  children: [
                    Center(
                        child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          'asset/images/john.png',
                          height: 94.h,
                          width: 94.w,
                        ),
                        Positioned(
                          left: 69.w,
                          top: 56.h,
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    height: 176.h,
                                    width: 381.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(12.r),
                                          topRight: Radius.circular(12.r)),
                                    ),
                                    child: Column(
                                      children: [
                                        Gap(16.h),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(),
                                                  ));
                                            },
                                            child: prodetailcontain(
                                              name: 'Delete profile pic',
                                            )),
                                        Gap(16.h),
                                        GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomePage(),
                                                  ));
                                            },
                                            child: prodetailcontain(
                                              name: 'Change profile pic',
                                            )),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              height: 34.h,
                              width: 34.w,
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Center(
                                  child: Image.asset(
                                'asset/images/sum1.png',
                                height: 17.h,
                                width: 17.w,
                                color: color1FACF3,
                              )),
                            ),
                          ),
                        )
                      ],
                    )),
                    Gap(40.h),
                  ],
                ),
              ),
              Regist(text: 'John Doe',
              control: name,),
              Gap(12.h),
              Regist(text: 'Add Email ID',control: password,),
              Gap(12.h),
              Regist(text: '+91 8129862588',control: profile,),
              Gap(254.h),
              container(
                  text: 'Save', height: 64.h, width: 333.w, color: color1FACF3)
            ],
          ),
        ));
  }
}

class prodetailcontain extends StatelessWidget {
  const prodetailcontain({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.h,
      width: 333.w,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(140.r),
          border: Border.all(color: color1FACF3)),
      child: Center(
          child: Text(
        name,
        style: font16fw700blue,
      )),
    );
  }
}
