import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:leetcode/views/widgets/communityStats.dart';
import 'package:leetcode/views/widgets/languages.dart';
import 'package:leetcode/views/widgets/month.dart';
import 'package:leetcode/views/widgets/skils.dart';
import 'package:leetcode/views/widgets/solvedProblems.dart';
import '../repository/dataAPI.dart';
import '../viewModels/homeViewModel.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  var data = HomeViewModel(dataRepository: DataAPI());
  bool show = false;
  var _myController ;

  @override
  void initState() {
    _myController = new TabController(length: 3, vsync: this);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1A1A),
        floatingActionButton: FloatingActionButton(

          onPressed: () {
            launch("https://leetcode.com/discuss/general-discussion/1771797/Share-your-feedback-to-the-new-user-profile-page");
          },
          child: Image.asset("icons/chatsmile.png", width: 24.w, height: 24.w,color: Color(0xff0A84FF),),
          backgroundColor: Color(0xff282828),
          elevation: 15,
        ),
        appBar: AppBar(
          title: Image.asset('images/logo.png', width: 18.75.w, height: 22.w,),
          backgroundColor: Color(0xff282828),

          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: show ? 973.w : 953.w,
                  width: 360.w,
                  margin: EdgeInsets.only(top: 21.715.w),
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff282828),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                              child: Image.asset("images/avatar.png", height: 80, width: 80,)
                          ),
                          SizedBox(width: 10.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Jameel Sawafta", style: TextStyle(color: Colors.white, fontSize: 15.74.sp,fontWeight: FontWeight.bold),),
                              SizedBox(height: 5.w,),
                              Text("Jameel_Sawafta", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 10.7.sp),),
                              SizedBox(height: 10.w,),
                              Row(
                                children: [
                                  Text("Rank", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 15.7.sp),),
                                  SizedBox(width: 10.w,),
                                  Text("1,773,770", style: TextStyle(color: Colors.white, fontSize: 14.74.sp),),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20.w,),
                      Row(
                        children: [
                          Icon(Icons.location_on_outlined, color: Color(0xffBDBEC2),size: 20),
                          SizedBox(width: 10.w,),
                          Text("Palestinian Territory", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 15.7.sp),),
                          ],
                      ),
                      SizedBox(height: 20.w,),
                      InkWell(
                        onTap: (){

                        },
                        child: InkWell(
                          onTap: (){
                            launch("https://github.com/JameelSawafta");
                          },
                          child: Row(
                            children: [
                              Image.asset("icons/github.png",color: Color(0xffBDBEC2), height: 15.w, width: 15.w,),
                              SizedBox(width: 10.w,),
                              Text("JameelSawafta", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 15.7.sp),),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.w,),
                      InkWell(
                        onTap: (){
                          launch("https://www.linkedin.com/in/jameel-sawafta-48612023b/");
                        },
                        child: Row(
                          children: [
                            Image.asset("icons/linkedinin.png",color: Color(0xffBDBEC2), height: 15.w, width: 15.w,),
                            SizedBox(width: 10.w,),
                            Text("jameel-sawafta-48612023b", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 15.7.sp),),
                          ],
                        ),
                      ),
                      SizedBox(height: 7.5.w,),
                      Divider(
                        color: Color(0xffBDBEC2),
                        thickness: .15,
                      ),
                      SizedBox(height: 10.w,),
                      Text("Community Stats", style: TextStyle(color: Colors.white, fontSize: 15.74.sp,fontWeight: FontWeight.bold),),
                      SizedBox(height: 15.w,),
                      CommunityStats(icon: Icons.remove_red_eye,iconColor:  Color(0xff0A84FF) ,title: "Views", value: "0",secValue: "0",),
                      SizedBox(height: 15.w,),
                      CommunityStats(icon: Icons.check_box,iconColor: Color(0xff64D2FF) ,title: "Solution", value: "0",secValue: "0",),
                      SizedBox(height: 15.w,),
                      CommunityStats(icon: Icons.forum,iconColor: Color(0xff00B8A3) ,title: "Discuss", value: "0",secValue: "0",),
                      SizedBox(height: 15.w,),
                      CommunityStats(icon: Icons.star,iconColor: Color(0xffFFA116) ,title: "Reputation", value: "0",secValue: "0",),
                      SizedBox(height: 10.w,),
                      Divider(
                        color: Color(0xffBDBEC2),
                        thickness: .15,
                      ),
                      SizedBox(height: 10.w,),
                      Text("Languages", style: TextStyle(color: Colors.white, fontSize: 15.74.sp,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20.w,),
                      Row(
                        children: [
                          Languages(languageName: "C++",),
                          Spacer(),
                          Text("12 ", style: TextStyle(color: Colors.white, fontSize: 14.74.sp),),
                          Text("problems solved", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                        ],
                      ),
                      SizedBox(height: 15.w,),
                      Row(
                        children: [
                          Languages(languageName: "Java",),
                          Spacer(),
                          Text("2 ", style: TextStyle(color: Colors.white, fontSize: 14.74.sp),),
                          Text("problems solved", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                        ],
                      ),
                      SizedBox(height: 10.w,),
                      Divider(
                        color: Color(0xffBDBEC2),
                        thickness: .15,
                      ),
                      SizedBox(height: 10.w,),
                      Text("Skils", style: TextStyle(color: Colors.white, fontSize: 15.74.sp,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20.w,),
                      Row(
                        children: [
                          Container(
                            height: 5.w,
                            width: 5.w,
                            decoration: BoxDecoration(
                              color: Color(0xffFF3B30),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 7.5.w,),
                          Text("Advanced", style: TextStyle(color: Colors.white, fontSize: 12.74.sp),),
                        ],
                      ),
                      SizedBox(height: 10.w,),
                      Wrap(children: [Shils(skillName: "Dynamic Programming",skillLevel: "2",skillUrl: "https://leetcode.com/tag/dynamic-programming/",)], ),
                      SizedBox(height: 25.w,),
                      Row(
                        children: [
                          Container(
                            height: 5.w,
                            width: 5.w,
                            decoration: BoxDecoration(
                              color: Color(0xffFF9500),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 7.5.w,),
                          Text("Intermediate", style: TextStyle(color: Colors.white, fontSize: 12.74.sp),),
                        ],
                      ),
                      SizedBox(height: 10.w,),
                      Row(
                        //direction: Axis.worizontal,
                        children: [
                        Shils(skillName: "Hash Table",skillLevel: "4",skillUrl: "https://leetcode.com/tag/hash-table/",),
                        SizedBox(width: 10.w,),
                        Shils(skillName: "Math",skillLevel: "2", skillUrl: "https://leetcode.com/tag/math/",),
                        SizedBox(width: 10.w,),
                        Shils(skillName: "Bit Manipulation",skillLevel: "1", skillUrl: "https://leetcode.com/tag/bit-manipulation/",),
                      ], ),
                      SizedBox(height: 25.w,),
                      Row(
                        children: [
                          Container(
                            height: 5.w,
                            width: 5.w,
                            decoration: BoxDecoration(
                              color: Color(0xff4CD964),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 7.5.w,),
                          Text("Fundamental", style: TextStyle(color: Colors.white, fontSize: 12.74.sp),),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.w),
                        child: Row(
                          //direction: Axis.worizontal,
                          children: [
                            Shils(skillName: "Array",skillLevel: "5", skillUrl: "https://leetcode.com/tag/array/",),
                            SizedBox(width: 10.w,),
                            Shils(skillName: "String",skillLevel: "6", skillUrl: "https://leetcode.com/tag/string/",),
                            SizedBox(width: 10.w,),
                            Shils(skillName: "Sorting",skillLevel: "1", skillUrl: "https://leetcode.com/tag/sorting/",),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: show,
                        child: Container(
                          padding: EdgeInsets.only(top: 10.w),
                          child: Row(
                            //direction: Axis.worizontal,
                            children: [
                              Shils(skillName: "Stack",skillLevel: "1", skillUrl: "https://leetcode.com/tag/stack/",),
                              SizedBox(width: 10.w,),
                              Shils(skillName: "Two Pointers",skillLevel: "1", skillUrl: "https://leetcode.com/tag/two-pointers/",),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25.w,),
                      Visibility(
                          visible: !show,
                          child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: InkWell
                                (
                                  onTap: (){
                                    setState(() {
                                      show = true;
                                    });
                                  },
                                  child: Text("Show more", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.74.sp),textAlign: TextAlign.center,)
                              )
                          ),
                      ),
                      Visibility(
                        visible: show,
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: InkWell
                              (
                                onTap: (){
                                  setState(() {
                                    show = false;
                                  });

                                },
                                child: Text("Show less", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.74.sp),textAlign: TextAlign.center,)
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 186.w,
                  width: 360.w,
                  margin: EdgeInsets.only(top: 21.715.w),
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff282828),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Solved Problems", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                      SizedBox(height: 30.w,),
                      Row(
                        children: [
                          Container(
                            height: 100.w,
                            width: 100.w,
                            child: Stack(
                              children: [
                                Center(
                                  child: Container(
                                    height: 100.w,
                                    width: 100.w,
                                    child: CircularProgressIndicator(
                                      value: 12/2444,
                                      backgroundColor:  Color(0xff4A4A4A),
                                      valueColor: AlwaysStoppedAnimation<Color>(Color(0xffFFA116)),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("12", style: TextStyle(color: Colors.white, fontSize: 20.74.sp),),
                                      Text("Solved", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.74.sp),),
                                    ],
                                  )
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 20.w,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SolvedProblems(type: 'Easy', value: 12, maxVal: '600', beats: 35.7, color: Color(0xff00B8A3),mainColor: Color(0xff294D35),),
                              SizedBox(height: 10.w,),
                              SolvedProblems(type: 'Meduim', value: 0, maxVal: '1305', beats: 0, color: Colors.yellow,mainColor: Color(0xff5E4E25),),
                              SizedBox(height: 10.w,),
                              SolvedProblems(type: 'Hard', value: 0, maxVal: '539', beats: 0, color: Colors.red,mainColor: Color(0xff5A302F),),
                              SizedBox(height: 10.w,),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 184.w,
                  width: 360.w,
                  margin: EdgeInsets.only(top: 21.715.w),
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff282828),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Badges", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                      SizedBox(height: 10.w,),
                      Text("0", style: TextStyle(color: Colors.white, fontSize: 20.7.sp),),
                      Row(
                        children: [
                          Spacer(),
                          Container(
                            width: 72.w,
                            height: 72.w,
                            decoration:
                            BoxDecoration(
                              color: Color(0xff282828),
                              image:  DecorationImage(
                                fit: BoxFit.cover,
                                colorFilter:
                                ColorFilter.mode(Color(0xff282828).withOpacity(0.1),
                                    BlendMode.dstATop),
                                image: AssetImage (
                                  'images/badges.png',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Text("Locked Badge", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                      Text("Oct LeetCoding Challenge", style: TextStyle(color: Colors.white, fontSize: 18.7.sp),),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 200.73.w,
                  width: 360.w,
                  margin: EdgeInsets.only(top: 21.715.w),
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff282828),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("39 ", style: TextStyle(color: Colors.white, fontSize: 18.7.sp),),
                          Text("submissions in the last year", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                        ],
                      ),
                      SizedBox(height: 10.w,),
                      Row(
                        children: [
                          Text("Total active days: ", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 10.7.sp),),
                          Text("7", style: TextStyle(color: Colors.white, fontSize: 12.7.sp),),
                          SizedBox(width: 10.w,),
                          Text("Max streak: ", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 10.7.sp),),
                          Text("4", style: TextStyle(color: Colors.white, fontSize: 12.7.sp),),
                        ],
                      ),
                      SizedBox(height: 10.w,),
                      SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Month(month: "Jan"),
                            SizedBox(width: 10.w,),
                            Month(month: "Feb"),
                            SizedBox(width: 10.w,),
                            Month(month: "Mar"),
                            SizedBox(width: 10.w,),
                            Month(month: "Apr"),
                            SizedBox(width: 10.w,),
                            Month(month: "May"),
                            SizedBox(width: 10.w,),
                            Month(month: "Jun"),
                            SizedBox(width: 10.w,),
                            Month(month: "Jul"),
                            SizedBox(width: 10.w,),
                            Month(month: "Aug"),
                            SizedBox(width: 10.w,),
                            Month(month: "Sep"),
                            SizedBox(width: 10.w,),
                            Month(month: "Oct"),
                            SizedBox(width: 10.w,),
                            Month(month: "Nov"),
                            SizedBox(width: 10.w,),
                            Month(month: "Dec"),
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 763.w,
                  width: 360.w,
                  margin: EdgeInsets.only(top: 21.715.w),
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff282828),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TabBar(
                        controller: _myController,
                        //isScrollable: true, // scrollable tabs use the full width of the screen (not the screen width)
                        onTap: (index) {
                          print('Tab $index tapped');
                        },
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.0,
                          ),
                          color: Color(0xff3E3E3E),
                        ),
                        indicatorColor: Color(0xffBDBEC2),
                        labelColor: Colors.white,
                        unselectedLabelColor: Color(0xffBDBEC2),

                        tabs: [
                          Tab(
                            text: 'Recent AC',
                          ),
                          Tab(
                            text: 'Solutions',
                          ),
                          Tab(
                            text: 'Discuss',
                          ),
                        ],
                      ),
                      SizedBox(height: 15.w,),
                      Expanded(
                        child: TabBarView(
                          controller: _myController,
                          children: [
                            Center(
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: data.recentAC.length,
                                  itemBuilder: (context,index){
                                return Container(
                                  width: 336.w,
                                  height: 56.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: index%2==0?Color(0xff3E3E3E):Color(0xff282828),
                                  ),
                                  padding: EdgeInsets.all(17.5),
                                  child: Text("${data.recentAC[index]}", style: TextStyle(color: Colors.white, fontSize: 15.7.sp),),
                                );
                              })
                            ),
                            Center(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/nulldark.png", height: 167.w, width: 200.w,),
                                    SizedBox(height: 10.w,),
                                    Text("No solutions", style: TextStyle(color: Color(0xff585E61), fontSize: 15.7.sp),),
                                  ],
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("images/nulldark.png", height: 167.w, width: 200.w,),
                                    SizedBox(height: 10.w,),
                                    Text("No solutions", style: TextStyle(color: Color(0xff585E61), fontSize: 15.7.sp),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100.w,),
              Container(
                width: 360.w,
                  child: Text("Copyright © 2022 LeetCode", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),)
              ),
              SizedBox(height: 20.w,),
              Container(
                  width: 360.w,
                  child: Wrap(
                    children: [
                      InkWell( child: Text("Help Center", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp), ), onTap: (){launch("https://support.leetcode.com/hc/en-us");},),
                      SizedBox(width: 5.w,),
                      Text("|", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                      SizedBox(width: 5.w,),
                      InkWell(child: Text("Jobs", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),), onTap: (){launch("https://leetcode.com/jobs/");},),
                      SizedBox(width: 5.w,),
                      Text("|", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                      SizedBox(width: 5.w,),
                      InkWell(child: Text("Bug Bounty", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),), onTap: (){launch("https://leetcode.com/bugbounty/");},),
                      SizedBox(width: 5.w,),
                      Text("|", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                      SizedBox(width: 5.w,),
                      InkWell(child: Text("Students", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),), onTap: (){launch("https://leetcode.com/students/");},),
                      SizedBox(width: 5.w,),
                      Text("|", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                      SizedBox(width: 5.w,),
                      InkWell(child: Text("Terms", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),), onTap: (){launch("https://leetcode.com/terms/");},),
                      SizedBox(width: 5.w,),
                      Text("|", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                      SizedBox(width: 5.w,),
                      InkWell(child: Text("Accessibility", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),), onTap: (){launch("https://leetcode.com/interview/");},),
                      SizedBox(width: 5.w,),
                      Text("|", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                      SizedBox(width: 5.w,),
                      InkWell(child: Text("Privacy Policy", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),), onTap: (){launch("https://leetcode.com/privacy/");},),
                    ],
                  )
              ),
              SizedBox(height: 20.w,),
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 20.w,),
                    CircleAvatar(
                      radius: 12.w,
                      backgroundImage: AssetImage("images/Flag.png"),
                    ),
                    SizedBox(width: 10.w,),
                    Text("United States", style: TextStyle(color: Color(0xffBDBEC2), fontSize: 12.7.sp),),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}

