import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'views/homeView.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(392.72727272727275, 856.7272727272727),
      builder: (context , child) {
        return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '',
    home: Home(),
    );
    },
    );
  }
}
