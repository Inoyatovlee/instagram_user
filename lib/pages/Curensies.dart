import 'package:uneversap_app/config/Imports.dart';

class Curesies extends StatefulWidget {
  const Curesies({super.key});

  @override
  State<Curesies> createState() => _CuresiesState();
}

class _CuresiesState extends State<Curesies> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: const Text("Valyuta kurslari ")),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: controller.loading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children:
                          List.generate(controller.currensies.length, (index) {
                        var item = controller.currensies[index];
                        return ListTile(
                          title: Row(
                            children: [
                              Text.rich(TextSpan(
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                  children: [
                                    TextSpan(text: item['Nominal' + " "]),
                                    TextSpan(text: item['CcyNm_UZC']),
                                  ])),
                            ],
                          ),
                          subtitle: Text(item['Date']),
                          trailing: Text(
                            item['Rate'],
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        );
                      }),
                    ),
            ),
          ),
        );
      },
    );
  }
}
