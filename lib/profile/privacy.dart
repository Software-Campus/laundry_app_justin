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

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      // appBar: AppBar(
      //   backgroundColor: Color(0xffECF3F6),
      //   title: Text('Privacy policy', style: font20fw700),
      //   centerTitle: true,
      // ),
      body: Padding(
        padding:  EdgeInsets.only(top: 36.h,left: 24.w,right: 24.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('Privacy policy', style: font20fw700),
                Icon(Icons.arrow_back),
              ],
            ),
          Text('Data Privacy and Protection',style:font20fw700black,),
           
              Gap(13.h),
              Text(" At Laundrybin, we take your privacy seriously and are committed to protecting your personal information. Any data collected, such as your name, contact details, and laundry preferences, is used solely for the purpose of providing our laundry services and improving your customer experience. We do not share your information with third parties unless required by law or with your explicit consent. Our website may use cookies to enhance your browsing experience, but these do not collect personally identifiable information. We employ industry-standard security measures to safeguard your data against unauthorized access, alteration, or disclosure. By using our services, you consent to the collection and use of your information as outlined in this privacy policy.",
              style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: 'DM_Sans',
          letterSpacing: MediaQuery.of(context).size.width * 0.005.w,
          
        ),textAlign: TextAlign.justify,
              
              ),
              Gap(31.h),
              Text('Information Collection and Usage',style:font20fw700black,),
           
              Gap(13.h),
              Text("At [Laundry Shop Name], we collect personal information from you when you use our services or interact with our website. This information may include your name, contact details, payment information, and preferences. We use this information to provide and improve our laundry services, personalize your experience, and communicate with you about your orders. Rest assured, we never sell or share your information with third parties for marketing purposes without your consent. Your privacy and security are our top priorities.",
              style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontFamily: 'DM_Sans',
          letterSpacing: MediaQuery.of(context).size.width * 0.005.w,
          
        ),textAlign: TextAlign.justify,)
        ],),
      )
    );
  }
}


