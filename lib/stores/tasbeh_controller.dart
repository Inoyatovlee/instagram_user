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
    "Astag'firulloh": {
      "id": 1,
      "title": "Astag'firulloh",
      "text": "Alloh kechirsin",
      "count": 0
    },
  };
//O ga raqam qo'shish
  addCount() {
    duolar[selected]['count']++;
    GetStorage().write(selected, duolar[selected]['count']);
    update();
  }

//check tekshirish
  check() {
    int count = GetStorage().read(selected) ?? 0;
    duolar[selected]['count'] = count;
    update();
  }

// 0 qilib qo'yish  /// if 0 dan kattaligiga shart berish
  reset() {
    if (duolar[selected]['count'] == 0) return;
    GetStorage().remove(selected);
    duolar[selected]['count'] = 0;
    update();
  }
}
