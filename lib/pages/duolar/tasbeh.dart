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
    controller.check();
    super.initState();
  }

  @override
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
                        textAlign: TextAlign.center),
                    const SizedBox(height: 20),
                    Stack(
                      children: [
                        Image.asset(AppImages.tas,
                            width: 340, fit: BoxFit.cover),
                        Positioned.fill(
                          child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                controller.duolar[controller.selected]['count']
                                    .toString(),
                                style: const TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.amber),
                              )),
                        ),
                      ],
                    ),
                    // Container(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 100, vertical: 60),
                    //   decoration: BoxDecoration(
                    //     gradient: LinearGradient(
                    //         colors: [AppColors.blue, AppColors.pink]),
                    //     borderRadius: BorderRadius.circular(1000),
                    //   ),
                    //   child: Text(
                    //       controller.duolar[controller.selected]['count']
                    //           .toString(),
                    //       style: const TextStyle(
                    //           fontSize: 100, color: Colors.white)),
                    // ),
                    const SizedBox(height: 50),
                    TasbehhButton(
                        color: Colors.green,
                        text: "Hisoblash",
                        onTap: () {
                          controller.addCount();
                        }),
                    const SizedBox(height: 24),
                    TasbehhButton(
                        color: Colors.red,
                        text: "Qayta o'qish",
                        onTap: () {
                          controller.reset();
                        }),
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

// ignore: must_be_immutable
class TasbehhButton extends StatelessWidget {
  String text;
  Color color;
  Function onTap;
  TasbehhButton({
    super.key,
    required this.color,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 8),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(30)),
        child: Text(text,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white)),
      ),
    );
  }
}
