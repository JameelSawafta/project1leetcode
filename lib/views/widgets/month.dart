import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Month extends StatelessWidget {
  String month;
  Month({Key? key,required this.month}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget sqar =Container(
      margin: EdgeInsets.all(1.5.w),
      width: 8.87.w,
      height: 8.87.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(1),
        color: Color(0xff3E3E3E),
      ),
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                // dublicat sqar 10 time
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
              ],
            ),
            Column(
              children: [
                // dublicat sqar 10 time
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
              ],
            ),
            Column(
              children: [
                // dublicat sqar 10 time
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
              ],
            ),
            Column(
              children: [
                // dublicat sqar 10 time
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
                sqar,
              ],
            ),
            Column(
              children: [
                // dublicat sqar 10 time
                sqar,
                Visibility(
                  visible: month=="Feb"? false:true,
                  child: sqar,
                ),
                Visibility(
                  visible: month==("Feb")? false:month==("Apr")? false:month==("Jun")? false:month==("Sep")? false:month==("Nov")?  false:true,
                  child: sqar,
                ),

              ],
            ),
          ],
        ),
        SizedBox(height: 5.w,),
        Container(child: Text("${month}", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 10.74.sp),textAlign: TextAlign.center,)),
      ],
    );
  }
}
