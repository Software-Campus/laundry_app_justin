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

class FaqPage extends StatefulWidget {
  const FaqPage({super.key});

  @override
  State<FaqPage> createState() => _FaqPageState();
}

class _FaqPageState extends State<FaqPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffECF3F6),
      appBar: AppBar(
        backgroundColor: Color(0xffECF3F6),
        title: Text('Faq', style: font20fw700),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: 36.h,left: 16.w,right: 22.w),
        child: Column(children: [
           Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Text('What laundry services do you offer?',style: font16fw700black,),
               Icon(Icons.expand_more,size:20.sp ,color: Colors.blue,)
             ],
           ),
              Gap(12.h),
              Text("We offer comprehensive laundry services, including wash, dry, and fold options for various garments and linens. Our experienced team ensures top-quality.",
              style: TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: Colors.black,
  fontFamily: 'DM_Sans',
  letterSpacing: MediaQuery.of(context).size.width * 0.005.w,
  
),textAlign: TextAlign.justify,
              
              ),
              Gap(16.h),
              rowtext(
                text: 'What laundry services do you offer?',
              ),
              Gap(16.h),
              rowtext(
                text: 'Do you offer pickup and delivery?',
              ),
              Gap(16.h),
              rowtext(
                text: 'What are your pricing options?',
              ),
              Gap(16.h),
              rowtext(
                text: 'How do you ensure the safety laundry?',
              ),
              Gap(16.h),
              rowtext(
                text: 'Do you provide eco-friendly options?',
              ),
        ],),
      )
    );
  }
}

class rowtext extends StatelessWidget {
  const rowtext({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
     Text(text,style: font16fw700black,),
     Icon(Icons.arrow_forward_ios,size:20.sp ,)
                 ],
               );
  }
}


