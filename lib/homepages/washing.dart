import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/instruct.dart';

class WashingPage extends StatefulWidget {
  const WashingPage({Key? key}) : super(key: key);

  @override
  _WashingPageState createState() => _WashingPageState();
}

class _WashingPageState extends State<WashingPage> {
  int totalPrice = 0;
  int itemCount = 0;

  void updateTotalPrice(int price) {
    setState(() {
      totalPrice += price;
      itemCount++;
    });
  }

  void removeItem(int price) {
    setState(() {
      totalPrice -= price;
      itemCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8FF2FF),
        title: Text(
          'Washing',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            fontFamily: 'DM_Sans',
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color(0xff8FF2FF),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'asset/images/w1.png',
              height: 199.h,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Column(
              children: [
                Gap(150.h),
                Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: ListView(
                    children: [
                      Gap(20.h),
                      wash(
                        image: 'asset/images/w2.png',
                        text: 'Shirt',
                        price: 20,
                        updateTotalPrice: updateTotalPrice,
                        removeItem: removeItem,
                      ),
                      Gap(20.h),
                      wash(
                        image: 'asset/images/w3.png',
                        text: 'T-Shirt',
                        price: 20,
                        updateTotalPrice: updateTotalPrice,
                        removeItem: removeItem,
                      ),
                      Gap(20.h),
                      wash(
                        image: 'asset/images/w4.png',
                        text: 'Shorts',
                        price: 10,
                        updateTotalPrice: updateTotalPrice,
                        removeItem: removeItem,
                      ),
                      Gap(20.h),
                      wash(
                        image: 'asset/images/w5.png',
                        text: 'Skirt',
                        price: 20,
                        updateTotalPrice: updateTotalPrice,
                        removeItem: removeItem,
                      ),
                      Gap(20.h),
                      wash(
                        image: 'asset/images/w6.png',
                        text: 'Jacket',
                        price: 40,
                        updateTotalPrice: updateTotalPrice,
                        removeItem: removeItem,
                      ),
                      Gap(20.h),
                      wash(
                        image: 'asset/images/w7.png',
                        text: 'Jeans',
                        price: 40,
                        updateTotalPrice: updateTotalPrice,
                        removeItem: removeItem,
                      ),
                      Gap(20.h),
                      wash(
                        image: 'asset/images/w8.png',
                        text: 'Hoodie',
                        price: 40,
                        updateTotalPrice: updateTotalPrice,
                        removeItem: removeItem,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => InstructPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: 64.h,
                            width: 333.w,
                            decoration: BoxDecoration(
                              color: Color(0xff1FACF3),
                              borderRadius: BorderRadius.circular(140),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '\$ $totalPrice',
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                        fontFamily: 'DM_Sans',
                                      ),
                                    ),
                                    Text(
                                      '$itemCount items',
                                      style:TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                        fontFamily: 'DM_Sans',
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Proceed',
                                      style:font16fw700white
                                    ),
                                    Gap(12.w),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class wash extends StatefulWidget {
  const wash({
    Key? key,
    required this.image,
    required this.text,
    required this.price,
    required this.updateTotalPrice,
    required this.removeItem,
  }) : super(key: key);

  final String image;
  final String text;
  final int price;
  final Function(int) updateTotalPrice;
  final Function(int) removeItem;

  @override
  State<wash> createState() => _washState();
}

class _washState extends State<wash> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          widget.image.toString(),
          height: 48.h,
          width: 48.w,
        ),
        Text(
          widget.text,
          style:font16fw400black
        ),
        Text(
          '\$ ${widget.price}',
          style: font16fw400black
        ),
        count == 0
            ? Container(
                height: 38.h,
                width: 72.w,
                decoration: BoxDecoration(
                  color: Color(0xff1FACF3),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      count++;
                      widget.updateTotalPrice(widget.price);
                      setState(() {});
                    },
                    child: Text(
                      '+Add',
                      style: font16fw400white,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            : Container(
                height: 38.h,
                width: 104.w,
                decoration: BoxDecoration(
                  color: Color(0xffECF3F6),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        count--;
                        widget.removeItem(widget.price);
                        setState(() {});
                      },
                      child: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 26.sp,
                        ),
                      ),
                    ),
                    Text(
                      count.toString(),
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontFamily: 'DM_Sans',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        count++;
                        widget.updateTotalPrice(widget.price);
                        setState(() {});
                      },
                      child: Container(
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 26.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
