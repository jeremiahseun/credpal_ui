class Product {
  final String id;
  final String name;
  final double currentPrice;
  final double originalPrice;
  final String imageUrl;
  final String? merchantLogo;
  final int? discountPercentage;

  Product({
    required this.id,
    required this.name,
    required this.currentPrice,
    required this.originalPrice,
    required this.imageUrl,
    this.merchantLogo,
    this.discountPercentage,
  });
}
