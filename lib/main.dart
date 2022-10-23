import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: ((context, child) => MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Responsive Login',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              home: child,
            )),
        designSize: const Size(375, 812),
        child: const LoginScreen());
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    print("r=${1.r}");
    print("sp=${1.sp}");
    print("h=${1.h}");
    print("w=${1.w}");
    print("sm=${1.sm}");
    print("sh=${1.sh}");
    print("sw=${1.sw}");

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: media.width > 400 ? 80.w : 20.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Username",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400),
                  decoration: InputDecoration(
                      constraints: BoxConstraints(maxHeight: 56.h),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r))),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10.h,
                ),
                TextFormField(
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        constraints: BoxConstraints(maxHeight: 56.h),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r)))),
                SizedBox(
                  height: 30.h,
                ),
                Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.all(8.sp),
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
