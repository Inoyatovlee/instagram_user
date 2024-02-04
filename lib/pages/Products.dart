import 'package:uneversap_app/config/Imports.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  ProductsController controller = Get.put(ProductsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Products"),
          ),
          body: const Column(
            children: [Text("Products")],
          ),
        );
      },
    );
  }
}
