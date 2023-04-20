import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:map/view/home_screen.dart';


void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) => HomeScreen()
      },

    )

  );
}