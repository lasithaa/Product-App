// lib/models/product.dart
class Product {
  final int id;
  final String title;
  final double price;
  final String? brand;
  final String description;
  final double rating;
  final List<String> images;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.brand,
    required this.description,
    required this.rating,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      brand: json['brand'],
      description: json['description'],
      rating: json['rating'].toDouble(),
      images: List<String>.from(json['images']),
    );
  }
}
