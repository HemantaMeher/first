/*
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../home/views/booking_views/aparment_booking_view.dart';
import '../controllers/project_detailed_controller.dart';

class ProjectDetailedView extends StatefulWidget {
  ProjectDetailedView({Key? key}) : super(key: key);

  @override
  State<ProjectDetailedView> createState() => _ProjectDetailedViewState();
}

class _ProjectDetailedViewState extends State<ProjectDetailedView> {
  String imgUrl =
      "https://s3-alpha-sig.figma.com/img/55e5/89cc/e2202896041a42ae3b8015bf5963cb69?Expires=1693785600&Signature=K8jHnIKb~xADoNw92JOfwbtvNbv3lqedRz5yT8~LJgRYovSMSB1Dn1y2ZSNNnjEbmAW0QoJ~xW~66lmqdNovT-ks3tf-1twxRmAaQLOXdPW2gZzmzmOU9juTsd0zd1AqH1P2Af99APd6aMWFzlmixKVGFaLS30mW7-drRQ3b21N7kECtW2eytclTF9nSBHseAga~RKrjWBWvDYKKKDgj1FtzApUGycDLfLFzeLuZptXlo-JMyh0cF2unr0KC~0lXe090hrTrv8SXYnB6dDQ8d0w02ajMhQeEU3R7yupjGxEQo5uYgEiNmpLs6Z1ekJSfWKesfOriN4giotr3ur7B9g__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4";
  List planList = ["Master Plan","1 BHK","2BHK"];
  int selectPlan = 0;
  String planDetailsImg = "https://s3-alpha-sig.figma.com/img/5140/0c2d/ae18f0c41858b3ce697016ff955e2288?Expires=1693785600&Signature=YS0t6NfX~HXckWS2r5-cUeyEdJXYJOv-RQqCQaV~u7XrmIiYjXPkPeoJJ9Cs4qEfWHE3s7AtTKPX3kD~Y8PoUdoVKHyo4cuSDWf5ohIn9HzLEDhjwionI1Gz2t9LbrZD52pYwwYk4YmRXL2M5F4e2GbzsBf9FnQelbW6qeFCi5jq2~tv1vwgRjByMGnHU4QNHM7jZfQ~EbNLUgDnixkBjEZmqS965BgsYW9BXOQTf0yrjDmPWpgiDLbt~oun8246yI920cScPJQxq1aNY~aEAGWpoG2kPPtltodARnXPLZYeX4k6KSq0kxQf8kHqL~PW7cIDaQXqUG-zWtq5YB5AaA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4";

  List amenitiesList = [
    "Badminton Court",
    "Table Tennis",
    "Basketball Court",
    "Tennis Court",
    "Gymnasium",
    "O.A.T",
    "Health Club",
    "Seating Area",
    "Multipurpose Hall",
    "Convention Center",
    "Cricket Pitch",
    "Swimming Pool",
    "Football Court"
  ];

  bool interest = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: Row(
            children: [
              SizedBox(
                width: 18.w,
              ),
              InkWell(
                onTap: (){
                  Get.back();
                },
                child: CircleAvatar(
                  radius: 21.h,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Iconsax.arrow_left,
                    size: 24.sp,
                    color: Color(0xff051830),
                  ),
                ),
              ),
            ],
          ),
          actions: [
            CircleAvatar(
              radius: 21.h,
              backgroundColor: Colors.white,
              child: Icon(
                Iconsax.heart,
                size: 24.sp,
                color: Color(0xff051830),
              ),
            ),
            SizedBox(
              width: 18.w,
            )
          ],
          leadingWidth: 80,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        bottomNavigationBar: Container(
          width: 360.w,
          height: 70.h,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 15
                )
              ]
          ),
          child: Center(
            child: SizedBox(
              width: 251.w,
              height: 42.h,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(AparmentBookingView());
                },
                child: Text('Pre-Book Now',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.white),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0B458C),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 360.w,
                height: 346.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(27),
                      bottomRight: Radius.circular(27),
                    ),
                    image: DecorationImage(
                        image: NetworkImage(imgUrl), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                width: 360.w,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Prestige Primrose Hills",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff051830)),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Iconsax.location,
                                      size: 14.sp,
                                      color: Color(0xff838396),
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Container(
                                      width: 235.w,
                                      height: 32.h,
                                      child: Text(
                                        "Banashankari, 6th Stage, off Kanakapura Road,, Bengaluru , 560109.",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xff838396)),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Icon(
                                  Iconsax.map,
                                  size: 24.sp,
                                  color: Color(0xff0B458C),
                                ),
                                Text(
                                  "Maps",
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff444B51)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 10.h,
                    ),

                    // 70L Onwards---------------------------------------------------
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/images/Mask.svg"),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "70L",
                              style: TextStyle(
                                  fontSize: 23.sp,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff0B458C)),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              "Onwards",
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff0B458C)),
                            ),
                          ],
                        ),
                        Container(
                          width: 135.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border:
                              Border.all(color: Color(0xffE1E0E3), width: 1)),
                          child: Center(
                              child: Text(
                                "62 Units Available",
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff08BD05)),
                              )),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 21.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              interest =! interest;
                            });
                          },
                          child: Container(
                            width: 107.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                                color: interest ? Color(0xff08BD05) : Color(0xffFAFF03),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(width: 1, color: Colors.grey)),
                            child: Center(
                              child: interest ? Text(
                                "Interested",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              ) : Text(
                                "Interested?",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff051830)),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 107.w,
                          height: 40.h,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                              Border.all(width: 1, color: Color(0xff0B458C))),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Iconsax.message,
                                  size: 24.sp,
                                  color: Color(0xff0B458C),
                                ),
                                Text(
                                  "Chat",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff0B458C)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 107.w,
                          height: 40.h,
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              color: Color(0xff0B458C),
                              borderRadius: BorderRadius.circular(5),
                              border:
                              Border.all(width: 1, color: Color(0xff0B458C))),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Iconsax.call_calling,
                                    size: 24.sp, color: Colors.white),
                                Text(
                                  "Call",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 28.h,
                    ),
                    ExpansionTile(
                      title: Text("Project Highlights",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Color(0xff0B458C)),),
                      iconColor: Color(0xff0B458C),
                      tilePadding: EdgeInsets.all(0),
                      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                      children: [
                        Container(
                          child: Column(
                            children: [
                              expensionProjectData("RERA No", ": PHASE 1: PRM/KA/RERA/1251/310/PR/200618/003453 "),
                              expensionProjectData("Development Site", ": 15 Acres"),
                              expensionProjectData("Project Type", ": Apartments"),
                              expensionProjectData("Total Units", ": 1462 Units"),
                              expensionProjectData("Bedrooms", ": 1, 2, 3 BHK")
                            ],
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20.h,
                    ),
                    ExpansionTile(
                      title: Text("About Prestige Primrose Hills",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Color(0xff0B458C)),),
                      iconColor: Color(0xff0B458C),
                      tilePadding: EdgeInsets.all(0),
                      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: 328.w,
                                child: Text("Located in the Banashankari neighbourhood of South Bengaluru, Prestige Primose Hills is a residential community that offers a serene, high quality lifestyle which is in perfect harmony with your preferences and expectations. You have a choice of one and two bedroom homes set in 13 towers that are spread across an expansive 15 acre site. Read More", style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20.h,
                    ),
                    ExpansionTile(
                      title: Text("Plan Details",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Color(0xff0B458C)),),
                      iconColor: Color(0xff0B458C),
                      tilePadding: EdgeInsets.all(0),
                      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                      children: [
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40.h,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: planList.length,
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          selectPlan = index;
                                        });
                                      },
                                      child: Container(
                                        height: 40.h,
                                        margin: EdgeInsets.symmetric(horizontal: 3.5.w),
                                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                                        decoration: BoxDecoration(
                                          color: selectPlan == index ? Color(0xff0B458C) : Colors.white,
                                          borderRadius: BorderRadius.circular(21),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xffE1E0E3)
                                          ),
                                        ),
                                        child: Center(
                                          child: Row(
                                            children: [
                                              Icon(Iconsax.picture_frame,size: 24.sp,color: selectPlan == index ? Colors.white : Color(0xff0B458C),),
                                              SizedBox(width: 10.w,),
                                              Text(planList[index],style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: selectPlan == index ? Colors.white : Color(0xff0B458C),),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(height: 15.h,),
                              Container(
                                width: 328.w,
                                height: 164.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                      width: .5,
                                      color: Color(0xffE1E0E3)
                                  ),
                                  image: DecorationImage(image: NetworkImage(planDetailsImg),fit: BoxFit.cover),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 5.h),
                                    width: 328.w,
                                    height: 59.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(4),
                                          bottomLeft: Radius.circular(4),
                                        ),
                                        gradient: LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              Colors.transparent,
                                              // Colors.transparent,
                                              Color(0xff0B458C)
                                            ]
                                        )
                                    ),
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("View Plan",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.w400,color: Colors.white,),),
                                          SizedBox(width: 5.w,),
                                          Icon(Iconsax.arrow_right,size: 12.sp,color: Colors.white,),
                                          SizedBox(width: 10.w,),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(height: 15.h,),
                              Row(
                                children: [
                                  Container(
                                    width: 162.w,
                                    height: 38.h,
                                    child: Center(
                                      child: Text("Download Prestige Primrose Hills Brochure",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff051830)),),
                                    ),
                                  ),
                                  Container(
                                    width: 158.w,
                                    height: 42.h,
                                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                                    decoration: BoxDecoration(
                                      color: Color(0xff588DCF),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Icon(Iconsax.document_download,size: 20.sp,color: Colors.white,),
                                        Text("Brochure",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),)
                                      ],
                                    ),
                                  )
                                ],
                              )

                            ],
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 15.h,
                    ),
                    ExpansionTile(
                      title: Text("Amenities",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Color(0xff0B458C)),),
                      iconColor: Color(0xff0B458C),
                      tilePadding: EdgeInsets.all(0),
                      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                      children: [
                        GridView.builder(
                          itemCount: amenitiesList.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.all(0),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 16.h,
                              mainAxisExtent: 16.h
                          ),
                          itemBuilder:(context, index) {
                            return Container(
                              // color: Colors.pinkAccent,
                                width: 150.w,
                                height: 20.h,
                                child: Row(

                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Color(0xff0B458C),
                                      radius: 10.w,
                                      child: ImageIcon(AssetImage("assets/images/Done_ring_round.png"),color: Colors.white),
                                    ),
                                    SizedBox(width: 12.w,),
                                    Text(amenitiesList[index],style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),)
                                  ],
                                )
                            );
                          },
                        )
                        */
/*Wrap(
                          runSpacing: 20,
                          children: [
                          amenities("Badminton Court"),
                          amenities("Table Tennis"),
                          amenities("Basketball Court"),
                          amenities("Tennis Court"),
                          amenities("Gymnasium"),
                          amenities("O.A.T"),
                          amenities("Health Club"),
                          amenities("Seating Area"),
                          amenities("Multipurpose Hall"),
                          amenities("Convention Center"),
                          amenities("Cricket Pitch"),
                          amenities("Swimming Pool"),
                          amenities("Football Court"),

                        ],)*//*

                        */
/* GridView(
                          // physics: NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 5,
                            crossAxisSpacing: 5,
                            mainAxisExtent: 20,
                          ),
                          shrinkWrap: true,
                          children: [
                            amenities("Badminton Court"),
                            amenities("Table Tennis"),
                            amenities("Basketball Court"),
                            amenities("Tennis Court"),
                            amenities("Gymnasium"),
                            amenities("O.A.T"),
                            amenities("Health Club"),
                            amenities("Seating Area"),
                            amenities("Multipurpose Hall"),
                            amenities("Convention Center"),
                            amenities("Cricket Pitch"),
                            amenities("Swimming Pool"),
                            amenities("Football Court"),

                          ],
                        )*//*

                      ],
                    ),

                    SizedBox(
                      height: 20.h,
                    ),
                    ExpansionTile(
                      title: Text("Specifications",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color: Color(0xff0B458C)),),
                      iconColor: Color(0xff0B458C),
                      tilePadding: EdgeInsets.all(0),
                      shape: OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                      children: [
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Structure",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("RCC Structure",),
                                  SizedBox(height: 10.h,),
                                  Text("Cement blocks for walls wherever needed",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Lobby",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Elegant lobby flooring in ground floor",),
                                  SizedBox(height: 10.h,),
                                  Text("Basement and upper floor lobby flooring in vitrified tiles",),
                                  SizedBox(height: 10.h,),
                                  Text("Lift cladding in marble / granite as per architect’s design",),
                                  SizedBox(height: 10.h,),
                                  Text("Service staircase and service lobby in KOTA Stone / cement tiles",),
                                  SizedBox(height: 10.h,),
                                  Text("All lobby walls will be finished with texture paint and ceilings in distemper",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Lift",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Lifts of suitable size and capacity will be provided in all Towers",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Apartment Flooring",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Vitrified tiles in the foyer, living, dining, corridors, all bedrooms, kitchen & utility",),
                                  SizedBox(height: 10.h,),
                                  Text("Ceramic tiles in the balcony",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Kitchen",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Granite counter with chrome plated tap with single bowl single drain stainless steel sink",),
                                  SizedBox(height: 10.h,),
                                  Text("Ceramic tiles dado for 2 feet over the granite counter",),
                                  SizedBox(height: 10.h,),
                                  Text("Provision for exhaust fan",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Toilet",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Toilet",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Internal Doors",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Internal Doors",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("External Doors & Windows",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("External Doors & Windows",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Painting",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Painting",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Electrical",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Electrical",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("Security System",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Security System",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10.h,),
                        ExpansionTile(
                          collapsedShape: Border.all(
                              width: 1,
                              color: Color(0xff838396)
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                              side: BorderSide(
                                  width: 1,
                                  color: Color(0xff838396)
                              )
                          ),
                          backgroundColor: Color(0xffE1E0E3),
                          title: Text("DG Power",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
                          iconColor: Color(0xff838396),
                          children: [
                            Container(
                              width: 328.w,
                              // height: 66.h,
                              color: Colors.white ,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.89.w,
                                  vertical: 12.h
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("DG Power",),
                                  SizedBox(height: 10.h,),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget expensionProjectData(String title, String value){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container 1---------
          Container(
            width: 122.w,
            child: Text(title, style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
          ),
          // Container 2---------
          Container(
            width: 152.w,
            child: Text(value, style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),),
          )
        ],
      ),
    );
  }

  Widget amenities(String str){
    return Container(
      // color: Colors.pinkAccent,
        width: 150.w,
        height: 20.h,
        child: Row(

          children: [
            CircleAvatar(
              backgroundColor: Color(0xff0B458C),
              radius: 10.w,
              child: ImageIcon(AssetImage("assets/images/Done_ring_round.png"),color: Colors.white),
            ),
            SizedBox(width: 12.w,),
            Text(str,style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.w400,color: Color(0xff838396)),)
          ],
        )
    );
  }



}
*/
