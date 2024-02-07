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
          body: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            padding: const EdgeInsetsDirectional.symmetric(horizontal: 16),
            child: controller.loading
                ? const Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
                    child: Wrap(
                      spacing: 5,
                      runSpacing: 5,
                      children:
                          List.generate(controller.products.length, (index) {
                        var item = controller.products[index];
                        return ProductCatd(product: item);
                      }),
                    ),
                  ),
          ),
        );
      },
    );
  }
}
