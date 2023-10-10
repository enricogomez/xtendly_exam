class CategoryModel {
  const CategoryModel({
    required this.id,
    required this.name,
    required this.imagePath,
  });

  final String id;
  final String name;
  final String imagePath;

  factory CategoryModel.toModel(Map<String, dynamic> item) {
    return CategoryModel(
      id: item["id"] as String,
      name: item["name"] as String,
      imagePath: item["imagePath"] as String,
    );
  }
}
