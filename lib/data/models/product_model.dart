class ProductModel {
  const ProductModel({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.categoryId,
  });

  final String name;
  final String description;
  final String imagePath;
  final String categoryId;

  factory ProductModel.toModel(Map<String, dynamic> item) {
    return ProductModel(
      categoryId: item["categoryId"] as String,
      name: item["name"] as String,
      description: item["desc"] as String,
      imagePath: item["imagePath"] as String,
    );
  }
}
