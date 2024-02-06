import 'package:uneversap_app/config/Imports.dart';

class Tasbeh extends StatefulWidget {
  const Tasbeh({super.key});

  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  TasbehController controller = Get.put(TasbehController());
  @override
  void initState() {
    controller.selected = Get.arguments;
    super.initState();
  }

  Widget build(BuildContext context) {
    return GetBuilder<TasbehController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(controller.selected),
          ),
          body: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500),
              child: Center(
                child: Column(
                  children: [
                    Text(controller.duolar[controller.selected]['title'],
                        style: const TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    Text(
                      "${"'Ma'nosi: " + controller.duolar[controller.selected]['text']}'",
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 60),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [AppColors.blue, AppColors.pink]),
                        borderRadius: BorderRadius.circular(1000),
                      ),
                      child: const Text("0", style: TextStyle(fontSize: 100)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
