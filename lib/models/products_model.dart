class ProductsModel {
  String title;
  dynamic price;
  String description;
  String category;
  String image;

  ProductsModel({
    required this.title,
    required this.category,
    this.price,
    required this.description,
    required this.image,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
      title: json['title'],
      category: json['category'],
      price: json['price'],
      description: json['description'],
      image: json['image']);

  //20 ta listni aylanib chiqib ^ shunaqa ma'lumotlarni bersin

  List<ProductsModel> productModelFromJson(List list) =>
      List<ProductsModel>.from(
          list.map((item) => ProductsModel.fromJson(item)));
}
