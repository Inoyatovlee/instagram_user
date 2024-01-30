import 'package:flutter/material.dart';
import 'package:uneversap_app/config/Imports.dart';
import 'package:uneversap_app/stores/home_controller.dart';

class PrayerTime extends StatefulWidget {
  const PrayerTime({super.key});

  @override
  State<PrayerTime> createState() => _PrayerTimeState();
}

class _PrayerTimeState extends State<PrayerTime> {
  HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${controller.selectCity} vaqti bilan"),
      ),
      body: Column(
        children: [
          Text(controller.prayerTimes.toString()),
        ],
      ),
    );
  }
}
