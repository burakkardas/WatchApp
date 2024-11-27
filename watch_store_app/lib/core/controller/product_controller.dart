import 'package:get/get.dart';
import 'package:watch_store_app/models/product_model.dart';

class ProductController extends GetxController {
  final RxList<Product> _productList = <Product>[].obs;
  List get productList => _productList;

  void addProduct(Product product) {
    _productList.add(product);
  }

  void removeProduct(Product product) {
    _productList.remove(product);
  }
}
