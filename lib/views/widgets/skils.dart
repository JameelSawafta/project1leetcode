import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import 'languages.dart';

class Shils extends StatelessWidget {
  String skillName;
  String skillLevel;
  String skillUrl;
  Shils({Key? key,required this.skillName,required this.skillLevel, required this.skillUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launch(skillUrl);
      },
      child: Row(
        children: [
          Languages(languageName: "${skillName}",),
          SizedBox(width: 5.w,),
          Text("x${skillLevel}", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 15.7.sp),),
        ],
      ),
    );
  }
}
