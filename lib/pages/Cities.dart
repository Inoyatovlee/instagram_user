import 'package:uneversap_app/config/Imports.dart';

class Cities extends StatefulWidget {
  const Cities({super.key});

  @override
  State<Cities> createState() => _CitiesState();
}

class _CitiesState extends State<Cities> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hududni tanlang"),
      ),
      body: Column(
        children: List.generate(controller.cities.length, (index) {
          return ListTile(
            title: Text(controller.cities[index]),
            leading: const Icon(Icons.location_city_rounded),
            trailing: const Icon(Icons.arrow_right, size: 30),
            onTap: () {
              controller.selectCity = controller.cities[index];
              controller.fetchPrayerTimes();
            },
          );
        }),
      ),
    );
  }
}
