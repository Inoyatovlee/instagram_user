import 'package:uneversap_app/config/Imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          constraints: const BoxConstraints(maxWidth: 500),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              const Text("Help you",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
              const SizedBox(height: 24),
              HomeButton(
                icon: Icons.attach_money,
                text: "Valyutalar kursi",
                subtitle:
                    "Real vaqt davomidagi valyuta kurslaridan habardor bo'ling",
                image: AppImages.momo,
                colors: [AppColors.blue, AppColors.pink],
                textcolor: Colors.white,
                onTap: () {
                  controller.fetchCurresies();
                  Get.to(const Curesies());
                },
              ),
              HomeButton(
                icon: Icons.attach_money,
                text: "Namoz vaqtlari ",
                subtitle: "Besh vaqt namoz vaqitlarini bilish uchun kiring",
                image: AppImages.momo,
                colors: [AppColors.red, AppColors.pink],
                textcolor: Colors.white,
                onTap: () {
                  Get.to(const Cities());
                },
              ),
              HomeButton(
                icon: Icons.attach_money,
                text: "Mahsulotlar ",
                subtitle: "Eng arzon va hamyonmob mahsulotlar siz uchun",
                image: AppImages.momo,
                colors: [AppColors.pink, AppColors.yellow],
                textcolor: Colors.white,
                onTap: () {
                  Get.to(const Products());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
