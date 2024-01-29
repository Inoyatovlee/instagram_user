import 'package:uneversap_app/config/Imports.dart';

class HomeButton extends StatelessWidget {
  IconData icon;
  String text, subtitle, image;
  Function onTap;
  List<Color> colors;
  Color textcolor;
  HomeButton({
    super.key,
    required this.icon,
    required this.text,
    required this.subtitle,
    required this.image,
    required this.colors,
    required this.textcolor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            onTap();
          },
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: colors),
                borderRadius: BorderRadius.circular(24)),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: textcolor)),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: textcolor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                Image.asset(image, width: 80),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}
