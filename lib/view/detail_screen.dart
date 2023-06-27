import 'dart:math';

import 'package:animator/controller/planet_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen>
    with SingleTickerProviderStateMixin {
  Planetcontroller controller = Get.put(Planetcontroller());
  AnimationController? animationController;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 10));
    animationController!.repeat();
    animationController!.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    int i = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple.shade900, Colors.indigo.shade800])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, 'home');
                      },
                      child: Icon(Icons.arrow_back,
                          size: 18.sp, color: Colors.white)),
                  Icon(Icons.more_vert, size: 18.sp, color: Colors.white),
                ],
              ),
              Spacer(),
              Stack(
                alignment: Alignment(0, -2),
                children: [
                  Container(
                    height: 30.h,
                    width: 100.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.indigo.shade800,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Spacer(),
                        Text(
                          "${controller.planetlist[i].name}",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20.sp),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Milkway Glaxey",
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp),
                        ),
                        SizedBox(height: 10),
                        Divider(
                            height: 1,
                            color: Colors.blue,
                            thickness: 2,
                            endIndent: 90,
                            indent: 90),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on,
                                color: Colors.grey.shade400, size: 18.sp),
                            Text(
                              "${controller.planetlist[i].distance}",
                              style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                      ],
                    ),
                  ),
                  Image.asset("${controller.planetlist[i].image}",
                      height: 150, width: 150, fit: BoxFit.fill),
                ],
              ),
              SizedBox(height: 50),
              Text(
                "OVERVIEW",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.sp),
              ),
              SizedBox(height: 10),
              Divider(
                  height: 1, color: Colors.blue, thickness: 2, endIndent: 90),
              SizedBox(height: 20),
              Text(
                "${controller.planetlist[i].details}",
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp),
              ),
              Spacer(),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return Container(
                          width: 100.w,
                          height: 20.h,
                          color: Colors.indigo,
                          child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                            child: Row(
                              children: controller.planetlist
                                  .asMap()
                                  .entries
                                  .map((e) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: InkWell(onTap: () {
                                      Navigator.pushReplacementNamed(context, 'detail',arguments: e.key);
                                    },
                                      child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset(
                                                  "${controller.planetlist[e.key].image}",
                                                  height: 110,
                                                  width: 110,
                                                  fit: BoxFit.fill),
                                              SizedBox(height: 10),
                                              Text(
                                                "${controller.planetlist[e.key].name}",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 18.sp,
                                                    fontWeight: FontWeight.w500),
                                              )
                                            ],
                                          ),
                                    ),
                                  ))
                                  .toList(),
                            ),
                          ),
                        );
                      },
                      isDismissible: false,
                      enableDrag: true,
                      showDragHandle: true,
                      backgroundColor: Colors.indigo);
                },
                child: Container(
                  height: 8.h,
                  width: 100.w,
                  alignment: Alignment.center,
                  child: Text("Visit More Planet",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: Colors.white)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [
                        Colors.blue.shade400,
                        Colors.blue.shade800
                      ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
