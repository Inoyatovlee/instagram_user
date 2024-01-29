import 'package:dio/dio.dart';
import 'package:uneversap_app/config/Imports.dart';

class HomeController extends GetxController {
  Dio http = Dio();

  List currensies = [];

  bool loading = false;

  // metodlar
  // get bu backentdan ma'lumotlarni   olib kelishda ishlatiladi
  // post bu metod beckentga ma'lumot jo'natadi
  // put bu beckentdagi ma'lumotni tahrirlab beradi
  // delete o'chiradi

  fetchCurresies() async {
    try {
      loading = true;
      update();
      // await Future.delayed(Duration(seconds: 5));   /vqatni sekinlashtiradi/
      var res = await http.get('https://cbu.uz/uz/arkhiv-kursov-valyut/json/');
      currensies = res.data;
    } catch (err) {
      print(err);
    } finally {
      loading = false;
      update();
    }
  }

  List<String> cities = [
    "Toshkent",
    "Fargona",
    "Andijon",
    "Namangan",
    "Buxoro",
  ];

  Map<String, dynamic> prayrTime = {};
  String selectCity = '';

  fetchPrayerTimes() async {
    try {
      loading = true;
      update();
      var res = await http
          .get('https://islomapi.uz/api/present/day?region=$selectCity');
      prayrTime = res.data;
      Get.to(() => const PrayerTime());
    } catch (err) {
      print(err);
    } finally {
      loading = false;
      update();
    }
  }
}
// CcyNm_UZ: AQSH dollari
// Nominal: 1
// Rate: 12390.08
// Date: 09.01.2024

// https://islomapi.uz/api/present/day?region=Toshkent
  //https://cbu.uz/uz/arkhiv-kursov-valyut/json/