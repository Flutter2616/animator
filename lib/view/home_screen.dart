import 'dart:math';

import 'package:animator/controller/planet_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo.shade900,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: false,
              backgroundColor: Colors.blue.shade700,
              flexibleSpace: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade700, Colors.blue.shade500],
                  ),
                ),
              ),
              leading: Icon(Icons.menu, color: Colors.white, size: 25.sp),
              title: Text("treva"),
              centerTitle: true,
              actions: [
                Icon(Icons.search, size: 20.sp, color: Colors.white),
              ],
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return InkWell(onTap: () {
                Navigator.pushNamed(context, 'detail',arguments: index);
              },
                child: Stack(
                  alignment: Alignment(-1, 0.6),
                  children: [
                    Container(
                      width: 80.w,
                      height: 15.h,
                      margin: EdgeInsets.only(left: 70, right: 20, top: 15,bottom: 15),
                      padding: EdgeInsets.only(left: 70, right: 20, top: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.indigo.shade400,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${controller.planetlist[index].name}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(Icons.more_vert,
                                  size: 15.sp, color: Colors.grey.shade400)
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Milkway Glaxey",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                              fontSize: 10.sp,
                            ),
                          ),
                          SizedBox(height: 5),
                          Divider(
                              height: 1,
                              color: Colors.blue,
                              thickness: 2,
                              endIndent: 90),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.location_on,
                                  color: Colors.grey.shade400, size: 10.sp),
                              SizedBox(width: 10),
                              Text(
                                "54.6m km",
                                style: TextStyle(
                                  color: Colors.grey.shade400,
                                  fontSize: 8.sp,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Image.asset("${controller.planetlist[index].image}",
                        width: 15.h, height: 15.h, fit: BoxFit.fill),
                  ],
                ),
              );
            }, childCount: controller.planetlist.length)),
          ],
        ),
      ),
    );
  }
}
