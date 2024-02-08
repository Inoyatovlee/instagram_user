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
        body: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            constraints: const BoxConstraints(maxWidth: 500),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 118, 177, 219),
                    Color.fromARGB(189, 32, 113, 178)
                  ]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                const Text("Hammasi bittada",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
                const SizedBox(height: 24),
                HomeButton(
                  icon: Icons.attach_money,
                  text: "Namoz vaqtlari ",
                  subtitle: "Besh vaqt namoz vaqitlarini bilish uchun kiring",
                  image: AppImages.mosque,
                  colors: [AppColors.blue, AppColors.pink],
                  textcolor: Colors.white,
                  onTap: () {
                    Get.to(() => const Cities());
                  },
                ),
                HomeButton(
                  icon: Icons.attach_money,
                  text: "Elektron tasbeh ",
                  subtitle: "Har kuni zikr qilishni unnutmang",
                  image: AppImages.pra,
                  colors: [AppColors.blue, AppColors.pink],
                  textcolor: Colors.white,
                  onTap: () {
                    Get.to(() => const TasbehMain());
                  },
                ),
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
                    Get.to(() => const Curesies());
                  },
                ),
                // HomeButton(
                //   icon: Icons.attach_money,
                //   text: "Mahsulotlar ",
                //   subtitle: "Eng arzon va hamyonmob mahsulotlar siz uchun",
                //   image: AppImages.daw,
                //   colors: [AppColors.blue, AppColors.pink],
                //   textcolor: Colors.white,
                //   onTap: () {
                //     Get.to(() => const Products());
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
