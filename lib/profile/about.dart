import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/adress.dart';
import 'package:laundaryapp/orderPages/order.dart';
import 'package:laundaryapp/orderPages/orderid.dart';
import 'package:slider_button/slider_button.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text('About Us', style: font20fw700),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 36.h,left: 21.w,right: 24.w),
        child: Column(children: [
           Row(
                children: [
                  Image.asset(
                    'asset/images/Logo.png',
                    height: 38.h,
                    width: 38.w,
                  ),
                  Gap(15.3.w),
                  Text(
                    'Laundrybin',
                    style: TextStyle(
                        color: Color(0xff567177),
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Gap(9.h),
              Text("At Laundrybin, we are passionate about providing top-quality laundry services tailored to meet the unique needs of our customers. With years of experience in the industry, our dedicated team is committed to delivering impeccable results and exceptional customer service. From wash, dry, and fold services to specialized treatments for delicate fabrics, we handle each garment with the utmost care and attention to detail. Our state-of-the-art equipment and eco-friendly practices ensure that your laundry is not only clean but also handled responsibly. Conveniently located in the heart of [Location], we strive to make the laundry process hassle-free and efficient for everyone. Trust us with your laundry needs, and experience the difference here. we understand that convenience is key in today's fast-paced world. That's why we offer convenient pickup and delivery services, ensuring that your laundry experience fits seamlessly into your busy schedule. Our friendly and professional staff are here to assist you every step of the way, whether you have special requests or simply need advice on garment care. As a locally owned and operated business, we take pride in serving our community with integrity and reliability. Discover the ease and satisfaction of outsourcing your laundry to [Laundry Shop Name], where quality meets convenience.",
              style: TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: Colors.black,
  fontFamily: 'DM_Sans',
  letterSpacing: MediaQuery.of(context).size.width * 0.005.w,
  
),textAlign: TextAlign.justify,
              
              )
        ],),
      )
    );
  }
}


