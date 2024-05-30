import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress.dart';
import 'package:laundaryapp/notifications/notify.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/orderPages/orderid.dart';
import 'package:laundaryapp/profile/about.dart';
import 'package:laundaryapp/profile/address.dart';
import 'package:laundaryapp/profile/dashboard.dart';
import 'package:laundaryapp/profile/faq.dart';
import 'package:laundaryapp/profile/history.dart';
import 'package:laundaryapp/profile/laundry.dart';
import 'package:laundaryapp/profile/privacy.dart';
import 'package:laundaryapp/orderPages/review.dart';
import 'package:laundaryapp/profile/prodetails.dart';
import 'package:laundaryapp/profile/review1.dart';
import 'package:laundaryapp/screen/splashlo.dart';
import 'package:laundaryapp/screen/splashverify.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
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
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderPage(),
                          ));
                    },
                    child: Image.asset(
                      'asset/images/calendar.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                  ),
                  selectedIcon: Image.asset(
                    'asset/images/calendar.png',
                    height: 28.h,
                    width: 28.w,
                    color: color1FACF3,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NotifyPage(),
                          ));
                    },
                    child: Icon(Icons.notifications,
                        size: 28.sp, color: Color(0xff6E97AE)),
                  ),
                  selectedIcon: Icon(
                    Icons.notifications,
                    color: Colors.blue,
                    size: 28.sp,
                  ),
                  label: ''),
              NavigationDestination(
                  icon: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProfilePage(),
                          ));
                    },
                    child: Icon(
                      Icons.person,
                      color: Color(0xff6E97AE),
                      size: 28.sp,
                    ),
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
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffC3E5F5),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(50.r))),
                height: 257.h,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                        top: 235.h,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffC3E5F5),
                          ),
                          height: 55.h,
                          width: 100.w,
                        )),
                    Positioned(
                        top: 300.h,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffECF3F6),
                          ),
                          height: 55.h,
                          width: 150.w,
                        )),
                    Padding(
                      padding: EdgeInsets.only(left: 100.w),
                      child: Image.asset('asset/images/profile.png',
                          height: 123.h,
                          width: MediaQuery.of(context).size.width),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 62.h, left: 24.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Profile", style: font24fw700black),
                          Gap(50.h),
                          Row(
                            children: [
                              Image.asset(
                                "asset/images/john.png",
                                height: 55.h,
                                width: 55.w,
                              ),
                              Gap(16.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "John Doe",
                                    style: font24fw700black,
                                  ),
                                  Text("+91 8129862588",
                                      style: font16fw400black),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProfileDetails(),
                                          ));
                                    },
                                    child: Row(
                                      children: [
                                        Text(
                                          "Edit profile",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.sp,
                                              color: color1FACF3),
                                        ),
                                        Gap(4.w),
                                        Icon(
                                          Icons.edit_outlined,
                                          size: 13.sp,
                                          color: Colors.blue,
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 95.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.r),
                        bottomRight: Radius.circular(50.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Gap(24.w),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HistoryPage(),
                                ));
                          },
                          child: procontain(
                            image: 'asset/images/pro1.png',
                            gap: 16.w,
                            text: 'History',
                          ),
                        ),
                        Gap(15.w),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LaundryPage(),
                                ));
                          },
                          child: procontain(
                            image: 'asset/images/pro2.png',
                            gap: 7.w,
                            text: 'Contact us',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500.h,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(50.r)),
                  color: Color(0xffECF3F6),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 29.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Dashboard(),
                              ));
                        },
                        child: dashboard(
                          images: 'asset/images/pro3.png',
                          text3: 'Dashboard',
                        ),
                      ),
                      Gap(32.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AddressFinal(),
                              ));
                        },
                        child: dashboard(
                          images: 'asset/images/pro4.png',
                          text3: 'Address',
                        ),
                      ),
                      Gap(32.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FaqPage(),
                              ));
                        },
                        child: dashboard(
                          images: 'asset/images/pro5.png',
                          text3: 'FAQ',
                        ),
                      ),
                      Gap(32.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AboutPage(),
                              ));
                        },
                        child: dashboard(
                          images: 'asset/images/pro6.png',
                          text3: 'About Us',
                        ),
                      ),
                      Gap(32.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReviewPage(),
                              ));
                        },
                        child: dashboard(
                          images: 'asset/images/pro7.png',
                          text3: 'Reviews',
                        ),
                      ),
                      Gap(32.w),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PrivacyPage(),
                              ));
                        },
                        child: dashboard(
                          images: 'asset/images/pro8.png',
                          text3: 'Privacy policy',
                        ),
                      ),
                      Gap(40.h),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 260.h,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12.r),
                                        topRight: Radius.circular(12.r))),
                                child: Column(
                                  children: [
                                    Gap(40.h),
                                    Padding(
                                      padding: EdgeInsets.only(left: 87.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Are You Sure',
                                            style: TextStyle(
                                              fontSize: 34.sp,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.black,
                                              fontFamily: 'DM_Sans',
                                            ),
                                          ),
                                          Gap(30.w),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProfilePage(),
                                                  ));
                                            },
                                            child: Icon(
                                              Icons.close,
                                              size: 22.sp,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Gap(12.h),
                                    Text(
                                      'Do You want to Log out  ?',
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff99AABA),
                                        fontFamily: 'DM_Sans',
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 24.w, top: 19.h),
                                      child: Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProfilePage(),
                                                  ));
                                            },
                                            child: YorNcontain(
                                              colors: Colors.blue,
                                              text: 'No',
                                            ),
                                          ),
                                          Gap(8.w),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        SplashLogin(),
                                                  ));
                                            },
                                            child: YorNcontain(
                                              colors: Colors.red,
                                              text: 'Yes,Cancel',
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'asset/images/logout.png',
                              height: 26.h,
                              width: 26.w,
                            ),
                            Gap(21.w),
                            Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffD14646),
                                fontFamily: 'DM_Sans',
                              ),
                            )
                          ],
                        ),
                      ),
                      Gap(57.h),
                      Center(
                        child: Text(
                          "V1.02.01",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16.sp,
                              fontFamily: 'DM_Sans',
                              color: Color(0xff6E97AE)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class dashboard extends StatelessWidget {
  const dashboard({
    super.key,
    required this.text3,
    required this.images,
  });
  final String text3;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              images,
              height: 26.h,
              width: 26.w,
            ),
            Gap(24.w),
            Text(
              text3,
              style: font16fw400black,
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 18.sp,
        )
      ],
    );
  }
}

class procontain extends StatelessWidget {
  const procontain({
    super.key,
    required this.text,
    required this.image,
    required this.gap,
  });
  final String text;
  final String image;
  final double gap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 159.w,
      decoration: BoxDecoration(
          color: Color(0xff34D5E5), borderRadius: BorderRadius.circular(30.r)),
      child: Row(
        children: [
          Gap(7.w),
          Image.asset(
            image,
            height: 46.h,
            width: 46.w,
          ),
          Gap(gap),
          Text(
            text,
            style: font16fw700white,
          )
        ],
      ),
    );
  }
}
