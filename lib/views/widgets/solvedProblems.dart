import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SolvedProblems extends StatelessWidget {
  String type;
  int value;
  String maxVal;
  double beats;
  Color color;
  Color mainColor;
  SolvedProblems({Key? key,required this.type,required this.value,required this.maxVal,required this.beats,required this.color,required this.mainColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("${type}", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 10.74.sp,fontWeight: FontWeight.bold),),
              SizedBox(width: 25.w,),
              Text("${value}", style: TextStyle(color: Colors.white, fontSize: 14.74.sp,fontWeight: FontWeight.bold),),
              Text("/${maxVal}", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 10.74.sp),),
              SizedBox(width: 25.w,),
              beats !=0 ?
              Row(
                children: [
                  Text("Beats", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 10.74.sp,fontWeight: FontWeight.bold),),
                  Text(" ${beats}%", style: TextStyle(color: Colors.white, fontSize: 12.74.sp,fontWeight: FontWeight.bold),),
                ],
              )
                  :Text("Not enough data", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 10.74.sp,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 5.h,),
          Stack(
            children: [
              Container(
                height: 5.w,
                width: 205.w,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Container(
                height: 5.w,
                width: value/3.w,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),


        ],
      ),
    );
  }
}
