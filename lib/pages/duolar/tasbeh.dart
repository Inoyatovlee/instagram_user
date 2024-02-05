import 'package:uneversap_app/config/Imports.dart';
import 'package:uneversap_app/stores/tasbeh_controller.dart';

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
        );
      },
    );
  }
}
