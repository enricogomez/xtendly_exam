import 'package:xtendly_exam/generated/assets.gen.dart';
import 'package:xtendly_exam/data/models/product_model.dart';
import 'package:xtendly_exam/utils/helper/json_decoder.dart';

class ProductService {
  Future<List<ProductModel>> getProducts() async {
    final mapData = await getDecodedJson(Assets.json.products);
    final listData = (mapData["data"] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList();

    return listData.map((item) => ProductModel.toModel(item)).toList();
  }
}
