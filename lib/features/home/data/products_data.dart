import 'package:credpal_test/models/product.dart';

class ProductsData {
  static List<Product> getProducts() {
    return [
      Product(
        id: '1',
        name: 'Nokia G20',
        currentPrice: 39780,
        originalPrice: 58000,
        imageUrl: 'assets/images/products/nokia.png',
        discountPercentage: 40,
      ),
      Product(
        id: '2',
        name: 'iPhone XS Max 4GB..',
        currentPrice: 295999,
        originalPrice: 315000,
        imageUrl: 'assets/images/products/xsmax.png',
        merchantLogo: 'assets/images/merchants/imate.png',
      ),
      Product(
        id: '3',
        name: 'Anker Soundcore..',
        currentPrice: 39780,
        originalPrice: 58000,
        imageUrl: 'assets/images/products/anker.png',
        merchantLogo: 'assets/images/merchants/ogabassey.png',
      ),
      Product(
        id: '4',
        name: 'iPhone 12 Pro',
        currentPrice: 490500,
        originalPrice: 515000,
        imageUrl: 'assets/images/products/12-pro.png',
        merchantLogo: 'assets/images/merchants/imate.png',
      ),
      Product(
        id: '5',
        name: 'iPhone 13 Pro',
        currentPrice: 490500,
        originalPrice: 515000,
        imageUrl: 'assets/images/products/12-pro.png',
        merchantLogo: 'assets/images/merchants/orile.png',
      ),
      Product(
        id: '6',
        name: 'iPhone 14',
        currentPrice: 490500,
        originalPrice: 515000,
        imageUrl: 'assets/images/products/12-pro.png',
        merchantLogo: 'assets/images/merchants/slot.png',
      ),
      Product(
        id: '7',
        name: 'iPhone 13 Pro',
        currentPrice: 490500,
        originalPrice: 515000,
        imageUrl: 'assets/images/products/12-pro.png',
        merchantLogo: 'assets/images/merchants/dw.png',
      ),
      Product(
        id: '8',
        name: 'iPhone 13 Pro',
        currentPrice: 490500,
        originalPrice: 515000,
        imageUrl: 'assets/images/products/12-pro.png',
        merchantLogo: 'assets/images/merchants/imate.png',
      ),
    ];
  }
}
