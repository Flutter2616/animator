import 'package:animator/controller/planet_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Detailscreen extends StatefulWidget {
  const Detailscreen({super.key});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  Planetcontroller controller = Get.put(Planetcontroller());

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
              color: Colors.indigo,
              image: DecorationImage(
                  image: AssetImage("${controller.planetlist[i].bgimage}"),
                  fit: BoxFit.cover,
                  opacity: 100)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },child: Icon(Icons.arrow_back, size: 18.sp, color: Colors.white)),
                  Icon(Icons.more_vert, size: 18.sp, color: Colors.white),
                ],
              ),
              Spacer(),
              Container(
                height: 30.h,
                width: 100.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade800,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("${controller.planetlist[i].image}"),
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
                    // SizedBox(height: 10),
                    Divider(
                        height: 1,
                        color: Colors.blue,
                        thickness: 2,
                        endIndent: 90,
                        indent: 90),
                    // SizedBox(height: 10),
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
                    SizedBox(height: 10),
                  ],
                ),
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
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500,
                    fontSize: 15.sp),
              )
            ],
          ),
        ),
      ),
    );
  }
}
