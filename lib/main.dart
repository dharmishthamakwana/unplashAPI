import 'package:extra2/screens/controller/home_controller.dart';
import 'package:extra2/screens/view/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding;
  HomeController.controller.callApi();

  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        // initialRoute: ,
        getPages: [
          GetPage(
            name: '/',
            page: () => const HomeScreen(),
          ),
        ],
      ),
    ),
  );
}
