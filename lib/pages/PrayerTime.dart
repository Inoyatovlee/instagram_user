import 'package:uneversap_app/config/Imports.dart';

class PrayerTime extends StatefulWidget {
  const PrayerTime({super.key});

  @override
  State<PrayerTime> createState() => _PrayerTimeState();
}

class _PrayerTimeState extends State<PrayerTime> {
  HomeController controller = Get.put(HomeController());

//bu funksiya filter qilib beradi yani taxtni o'zgartirib beradi
  // String filterText(String key) {
  //   switch (key) {
  //     case "tong_saharlik":
  //       return ('Bomdod namozi');
  //     case "quyosh":
  //       return ('Quyosh ');
  //     case "peshin":
  //       return ('Peshin namozi');
  //     case "asr":
  //       return ('Asr namozi');
  //     case "shom_iftor":
  //       return ('Shom namozis');
  //     case "hufton":
  //       return ('Hufton namozi');

  //     default:
  //       return "";
  //   }
  // }
// keys o'zgaruvchining nomi

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text("${controller.selectCity} vaqti bilan"),
          ),
          body:
              // Ma'lumot kelmasa loading bo'lib tursin
              controller.loading
                  ? const Center(child: CircularProgressIndicator())
                  : Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(controller.prayerTimes!.date,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                                Text(controller.prayerTimes!.weekday,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                              ]),
                          const Divider(),
                          Column(
                            children:
                                List.generate(controller.times.length, (index) {
                              // var item = controller.times[index];
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 3),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.test(
                                        controller.times[index]['vaqt'],
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text((controller.times[index]['soat']),
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600))
                                  ],
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ),
        );
      },
    );
  }
}
