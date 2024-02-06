import 'package:get/get.dart';
import 'package:uneversap_app/config/Imports.dart';

class TasbehController extends GetxController {
  String selected = "";
  Map<String, dynamic> duolar = {
    "Subhanalloh": {
      "id": 1,
      "title": "Subhanalloh",
      "text": "Allohni poklab yod etaman",
      "count": 0
    },
    "Alhamdulillah": {
      "id": 1,
      "title": "Alhamdulillah",
      "text": "Allohga hamd bo'lsin",
      "count": 0
    },
    "Allohu akbar": {
      "id": 1,
      "title": "Allohu akbar",
      "text": "Alloh buyuk",
      "count": 0
    },
  };

  addCount() {
    duolar[selected]['count']++;
    GetStorage().write(selected, duolar[selected]['count']);
    update();
  }
}
