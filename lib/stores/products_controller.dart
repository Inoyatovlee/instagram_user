//https://fakestoreapi.com
import 'package:uneversap_app/config/Imports.dart';
import 'package:dio/dio.dart';

class ProductsController extends GetxController {
  bool loading = false;

  Dio http = Dio();
  List<ProductsModel> products = [];

  fetchProducts() async {
    try {
      loading = true;
      update();
      var res = await http.get('https://fakestoreapi.com/products');
      products = productModelFromJson(res.data);
    } catch (err) {
      print(err);
    } finally {
      loading = false;
      update();
    }
  }

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }
}
