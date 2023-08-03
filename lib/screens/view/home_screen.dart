import 'package:cached_network_image/cached_network_image.dart';
import 'package:extra2/screens/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blueGrey,
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: HomeController.controller.data.length,
            itemBuilder: (context, index) {
              return Container(
                color: Colors.blueGrey.shade200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    child: CachedNetworkImage(
                      imageUrl:
                          "${HomeController.controller.data[index].coverPhoto!.urls!.small}",
                      fit: BoxFit.fill,
                      progressIndicatorBuilder: (context, url, progress) =>
                          Center(child: CircularProgressIndicator()),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
