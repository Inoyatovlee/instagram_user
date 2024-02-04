import 'package:dio/dio.dart';
import 'package:uneversap_app/config/Imports.dart';

class HomeController extends GetxController {
  Dio http = Dio();

  List<CurrenciesModel> currensies = [];

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
      currensies = cureniesFromMap(res.data);
    } catch (err) {
      print(err);
    } finally {
      loading = false;
      update();
    }
  }

  List<String> cities = [
    "Toshkent",
    "Farg'ona",
    "Andijon",
    "Namangan",
    "Buxoro",
    "Jizzax",
    "Urganch",
    "Navoiy",
    "Qarshi",
    "Nukus",
    "Samarqand",
    "Guliston",
    "Termiz",
    "Xiva",
    "Qo'qon",
  ];
  late PrayerTimeModel prayerTimes;
  String selectCity = '';

  fetchPrayerTimes() async {
    try {
      loading = true;
      update();
      var res = await http
          .get("https://islomapi.uz/api/present/day?region=$selectCity");
      prayerTimes = PrayerTimeModel.fromJson(res.data);
      Get.to(() => const PrayerTime());
    } catch (err) {
      Get.snackbar("Xatolik", "Ma'lumot topilmadi");
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