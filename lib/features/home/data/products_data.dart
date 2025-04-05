import 'package:credpal_test/models/product.dart';

class ProductsData {
  static List<Product> getProducts() {
    return [
      Product(
        id: '1',
        name: 'Nokia G20',
        currentPrice: 39780,
        originalPrice: 58000,
        imageUrl:
            'assets/images/products/nokia.png',
        discountPercentage: 40,
      ),
      Product(
        id: '2',
        name: 'iPhone XS Max 4GB..',
        currentPrice: 295999,
        originalPrice: 315000,
        imageUrl: 'assets/images/products/xsmax.png',
        merchantLogo: 'ogadget',
      ),
      Product(
        id: '3',
        name: 'Anker Soundcore..',
        currentPrice: 39780,
        originalPrice: 58000,
        imageUrl: 'assets/images/products/anker.png',
        merchantLogo: 'jumia',
      ),
      Product(
        id: '4',
        name: 'iPhone 12 Pro',
        currentPrice: 490500,
        originalPrice: 515000,
        imageUrl: 'assets/images/products/12-pro.png',
        merchantLogo: 'istore',
      ),
    ];
  }
}
