import 'package:xtendly_exam/data/models/category_model.dart';
import 'package:xtendly_exam/generated/assets.gen.dart';
import 'package:xtendly_exam/utils/helper/json_decoder.dart';

class CategoryService {
  Future<List<CategoryModel>> getCategories() async {
    final mapData = await getDecodedJson(Assets.json.categories);
    final listData = (mapData["data"] as List<dynamic>)
        .map((e) => e as Map<String, dynamic>)
        .toList();

    return listData.map((item) => CategoryModel.toModel(item)).toList();
  }
}
