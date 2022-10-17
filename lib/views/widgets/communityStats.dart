import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunityStats extends StatelessWidget {
  IconData icon;
  Color iconColor;
  String title;
  String value;
  String secValue;
  CommunityStats({Key? key,required this.icon,required this.iconColor,required this.title,required this.value,required this.secValue}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor,),
        SizedBox(width: 10.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text("${title}", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 14.7.sp),),
                SizedBox(width: 10.w,),
                Text("${value}", style: TextStyle(color: Colors.white, fontSize: 14.74.sp),),
              ],
            ),
            SizedBox(height: 5.w,),
            Row(
              children: [
                Text("Last week", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                SizedBox(width: 10.w,),
                Text("${secValue}", style: TextStyle(color: Colors.white, fontSize: 15.7.sp),),
              ],
            ),
          ],
        )
      ],
    );
  }
}
//remove_red_eye // Color(0xff0A84FF)
//check_box // Color(0xff64D2FF)
//forum // Color(0xff00B8A3)
//star // Color(0xff00B8A3)
