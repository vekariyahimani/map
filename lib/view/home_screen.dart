import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:map/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeCantroller homeCantroller = Get.put(HomeCantroller());
  @override
  void initState() {
    super.initState();
    homeCantroller.mapLatLon();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Obx(
                  () => GoogleMap(
                onMapCreated: homeCantroller.onMapCreated,
                initialCameraPosition: homeCantroller.cameraps.value,
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                    mapType: MapType.hybrid,
                  ),
            ),
            Padding(padding:  EdgeInsets.only(top: 18,left:18,right:18),child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)
                  ),child: Row(
                  children: [
                    SizedBox(width: 15,),
                    Image.asset("assets/image/1-.png",height: 50,width: 19,),
                    SizedBox(width: 15,),

                    Text("Search  here",style: TextStyle(color: Colors.black38,fontSize: 17),),
                    SizedBox(width: 90,),
                    Icon(Icons.mic_rounded,color: Colors.black,),
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        shape: BoxShape.circle

                      ),child: Center(
                      child: Text("h",style: TextStyle(color: Colors.white),),
                    ),
                    ),
                  ],
                ),
                ),
                SizedBox(height: 17),
              ],
            ),
            )

          ],
        ),
      ),
    );
  }
}