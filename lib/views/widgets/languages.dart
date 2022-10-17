import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Languages extends StatelessWidget {
  String languageName;
  Languages({Key? key,required this.languageName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xff3E3E3E),
      ),
      child: Text("${languageName}", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 11.7.sp),),
    );
  }
}
