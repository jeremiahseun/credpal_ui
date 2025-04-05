import 'package:credpal_test/constants/app_colors.dart';
import 'package:credpal_test/features/components/cd_text.dart';
import 'package:credpal_test/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Product Image
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Center(
                  child: product.imageUrl.isNotEmpty
                      ? Image.asset(
                          product.imageUrl,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 120,
                        )
                      : Icon(
                          Icons.image,
                          size: 50,
                          color: Colors.grey[400],
                        ),
                ),
              ),
              // Discount Badge
              if (product.discountPercentage != null)
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.discountBadge,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: CDText(
                      '${product.discountPercentage}%',
                      fontSize: 12,
                    ),
                  ),
                ),
              // Merchant Logo
              if (product.merchantLogo != null)
                Positioned(
                  top: 8,
                  left: product.discountPercentage != null ? null : 8,
                  right: product.discountPercentage != null ? 8 : null,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: CDText(
                      product.merchantLogo!,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CDText(
                  product.name,
                  fontSize: 12,
                ),
                const SizedBox(height: 4),
                CDText(
                  '₦ ${product.currentPrice.toStringAsFixed(0)}',
                  fontSize: 12,
                ),
                const SizedBox(height: 2),
                CDText(
                  '₦ ${product.originalPrice.toStringAsFixed(0)}',
                  fontSize: 12,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
