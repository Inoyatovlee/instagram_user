import 'package:uneversap_app/config/Imports.dart';

class ProductCatd extends StatelessWidget {
  ProductsModel product;
  ProductCatd({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.448,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.blue, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          InstaImageViewer(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: CachedNetworkImageProvider(product.image),
                      fit: BoxFit.cover)),
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(fontSize: 12),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.violet),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "${product.price} so'm",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
