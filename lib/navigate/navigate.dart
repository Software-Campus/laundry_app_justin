import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/notifications/notify.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/profile/profile.dart';

class NavigatePage extends StatefulWidget {
  @override
  _NavigatePageState createState() => _NavigatePageState();
}

class _NavigatePageState extends State<NavigatePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildScreen(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return OrderPage();
      case 2:
        return NotifyPage();
      case 3:
        return ProfilePage();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _buildScreen(_selectedIndex),
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
                    icon:
                        Icon(Icons.grid_view_rounded, color: Color(0xff6E97AE)),
                    selectedIcon: Icon(
                      Icons.grid_view_rounded,
                      color: Colors.blue,
                      size: 28.sp,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Image.asset(
                      'asset/images/calendar.png',
                      height: 28.h,
                      width: 28.w,
                    ),
                    selectedIcon: Image.asset(
                      'asset/images/calendar.png',
                      height: 28.h,
                      width: 28.w,
                      color: color1FACF3,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Icon(Icons.notifications,
                        size: 28.sp, color: Color(0xff6E97AE)),
                    selectedIcon: Icon(
                      Icons.notifications,
                      color: Colors.blue,
                      size: 28.sp,
                    ),
                    label: ''),
                NavigationDestination(
                    icon: Icon(
                      Icons.person,
                      color: Color(0xff6E97AE),
                      size: 28.sp,
                    ),
                    selectedIcon: Icon(
                      Icons.person,
                      color: Colors.blue,
                      size: 28.sp,
                    ),
                    label: ''),
              ],
              selectedIndex: _selectedIndex,
              onDestinationSelected: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }
}
