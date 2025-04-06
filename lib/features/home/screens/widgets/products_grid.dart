import 'package:credpal_test/features/home/data/products_data.dart';
import 'package:credpal_test/features/home/screens/components/product_card.dart';
import 'package:credpal_test/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProductsGridSection extends StatelessWidget {
  const ProductsGridSection({super.key});

  @override
  Widget build(BuildContext context) {
    // Get products data
    final products = ProductsData.getProducts();

    // Group products into pairs for two-row layout
    final productPairs = <List<Product>>[];
    for (var i = 0; i < products.length; i += 2) {
      final end = i + 2 <= products.length ? i + 2 : products.length;
      productPairs.add(products.sublist(i, end));
    }

    return SliverToBoxAdapter(
      child: ColoredBox(
        color: const Color(0xFFEEF3FF),
        child: Padding(
          padding: const EdgeInsets.only(top: 24, bottom: 16),
          child: SizedBox(
            height: 380.h, // Fixed height for the two rows
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              itemCount: productPairs.length,
              itemBuilder: (context, index) {
                final pair = productPairs[index];
                return Container(
                  width: 160, // Fixed width for each column
                  margin: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      // First row item (always exists)
                      Expanded(
                        child: ProductCard(product: pair[0]),
                      ),
                      const Gap(30), // Spacing between rows
                      // Second row item (may not exist if odd number of products)
                      Expanded(
                        child: pair.length > 1
                            ? ProductCard(product: pair[1])
                            : const SizedBox
                                .shrink(), // Empty space for odd count
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
