import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:laundaryapp/const.dart';
import 'package:laundaryapp/homepages/home.dart';
import 'package:laundaryapp/model/register.dart';
import 'package:laundaryapp/navigate/navigate.dart';
import 'package:laundaryapp/profile/prodetails.dart';
import 'package:laundaryapp/provider/register.dart';
import 'package:laundaryapp/screen/splash3.dart';
import 'package:laundaryapp/screen/splashfpass.dart';
import 'package:laundaryapp/screen/splashlo.dart';
import 'package:laundaryapp/screen/splashnwpass.dart';
import 'package:laundaryapp/widgets/SplashscreenBg.dart';
import 'package:provider/provider.dart';

class SplashRegister extends StatefulWidget {
  const SplashRegister({super.key});

  @override
  State<SplashRegister> createState() => _SplashRegisterState();
}

class _SplashRegisterState extends State<SplashRegister> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var Start = Provider.of<SplashRegist>(context, listen: false);
    return SplashscreenBG(
      mywidget: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.h, left: 24.w),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 90.h, left: 116.w),
                child: Text(
                  'Hey There ! \nWelcome',
                  style: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'DM_Sans'),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(90.h),
              Regist(
                text: 'Enter Name',
                control: name,
                validator: (p0) {
                  if (name.text.isEmpty) {
                    return 'This field is mandatory';
                  }
                  return null;
                },
              ),
              Gap(15.h),
              Regist(
                text: 'Enter Email ID or Phone Number',
                control: email,
                validator: (p0) {
                  if (email.text.isEmpty) {
                    return 'This field is mandatory';
                  }
                  final emailRegExp = RegExp(
                      r'^[^@]+@[^@]+\.[^@]+');
                  if (!emailRegExp.hasMatch(email.text)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              Gap(15.h),
              Regist(
                text: 'Enter your password',
                control: password,
                validator: (p0) {
                  if (password.text.isEmpty) {
                    return 'This field is mandatory';
                  }
                  if (password.text.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              Gap(15.h),
              Regist(
                text: 'Confirm password',
                control: passwordd,
                validator: (p0) {
                  if (passwordd.text.isEmpty) {
                    return 'This field is mandatory';
                  }
                  if (passwordd.text != password.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              Gap(5.h),
              Padding(
                padding: EdgeInsets.only(left: 24.w, top: 15.h, bottom: 27.h),
                child: SizedBox(
                  height: 64.h,
                  width: 333.w,
                  child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState?.validate() ?? false) {
                          try {
                            Data data = await checkUser(
                                name.text, email.text, password.text);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => NavigatePage(),
                                ));
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString())),
                            );
                          }
                        }
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff1FACF3)),
                      )),
                ),
              ),
              Gap(43.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: font15fw500white,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SplashLogin(),
                            ));
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontFamily: 'DM_Sans',
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Regist extends StatelessWidget {
  const Regist({
    super.key,
    required this.text,
    required this.control,
    this.validator,
  });
  final String text;
  final TextEditingController control;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, right: 24.w),
      child: Container(
        height: 64.h,
        width: 333.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(140.r),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Opacity(
            opacity: 0.5,
            child: TextFormField(
              validator: validator,
              controller: control,
              style: font16fw700black,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: text,
                  hintStyle: font15fw500clr8391A1),
            ),
          ),
        ),
      ),
    );
  }
}
