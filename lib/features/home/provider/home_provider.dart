import 'package:credpal_test/features/home/data/merchants_data.dart';
import 'package:credpal_test/features/home/data/products_data.dart';
import 'package:credpal_test/models/merchant.dart';
import 'package:credpal_test/models/product.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productsProvider =
    StateNotifierProvider<ProductsProvider, AsyncValue<List<Product>>>((ref) {
  return ProductsProvider(ref);
});

class ProductsProvider extends StateNotifier<AsyncValue<List<Product>>> {
  Ref ref;
  ProductsProvider(this.ref) : super(const AsyncValue.loading()) {
    getProducts();
  }

  Future<void> getProducts() async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(milliseconds: 1300));
    state = AsyncValue.data(ProductsData.getProducts());
  }
}

class MerchantsProvider extends StateNotifier<AsyncValue<List<Merchant>>> {
  Ref ref;
  MerchantsProvider(this.ref) : super(const AsyncValue.loading()) {
    getMerchants();
  }

  Future<void> getMerchants() async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));
    state = AsyncValue.data(MerchantsData.getMerchants());
  }
}
