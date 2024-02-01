import 'package:uneversap_app/config/Imports.dart';

class PrayerTime extends StatefulWidget {
  const PrayerTime({super.key});

  @override
  State<PrayerTime> createState() => _PrayerTimeState();
}

class _PrayerTimeState extends State<PrayerTime> {
  HomeController controller = Get.put(HomeController());
//bo'sh list ochib qo'yvommiz
  List times = [];
//bu funksiya obyektni listga aylantirib beradi
  filterTime(data) {
    data.forEach((key, value) {
      times.add({"vaqt": key, "soat": value});
    });
  }

//page ishga tushurishi bilan ishlatib yuboradi
  @override
  void initState() {
    filterTime(controller.prayerTimes['times']);
    super.initState();
  }

//bu funksiya filter qilib beradi yani taxtni o'zgartirib beradi
  String filterText(String key) {
    switch (key) {
      case "tong_saharlik":
        return ('Bomdod nomozi');
      case "quyosh":
        return ('Quyosh ');
      case "peshin":
        return ('Peshin nomozi');
      case "asr":
        return ('Asr nomozi');
      case "shom_iftor":
        return ('Shom nomozis');
      case "hufton":
        return ('Hufton nomozi');

      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${controller.selectCity} vaqti bilan"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                controller.prayerTimes['date'],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                controller.prayerTimes['weekday'],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ]),
            Divider(),
            Column(
              children: List.generate(times.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        filterText(
                          times[index]['vaqt'],
                        ),
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        (times[index]['soat']),
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
