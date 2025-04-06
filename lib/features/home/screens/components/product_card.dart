import 'package:credpal_test/constants/app_colors.dart';
import 'package:credpal_test/features/home/screens/components/cd_text.dart';
import 'package:credpal_test/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161.w,
      height: 174.h,
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.shadow,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CDText(
                      product.name,
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    const Gap(4),
                    FittedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CDText(
                            '₦ ${product.currentPrice.toStringAsFixed(0)}',
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: AppColors.primary,
                          ),
                          Gap(10),
                          CDText(
                            '₦ ${product.originalPrice.toStringAsFixed(0)}',
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough,
                            color: Color(0xffB3B3CC),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //* Product Image
          Positioned(
            left: 0,
            right: 0,
            top: 10,
            child: Visibility(
              visible: product.imageUrl.isNotEmpty,
              replacement: Icon(
                Icons.image,
                size: 50,
                color: Colors.grey[400],
              ),
              child: Image.asset(
                product.imageUrl,
                width: 161.w,
                height: 120.h,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //* Discount Badge
          if (product.discountPercentage != null)
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                height: 45.h,
                width: 45.w,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: FittedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CDText(
                        'Pay',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                      CDText(
                        '${product.discountPercentage}%',
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: AppColors.primary,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          //* Merchant Logo
          if (product.merchantLogo != null)
            Positioned(
              top: 8,
              left: product.discountPercentage != null ? null : 8,
              right: product.discountPercentage != null ? 8 : null,
              child: Container(
                height: 45.h,
                width: 45.w,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(product.merchantLogo!),
              ),
            ),
        ],
      ),
    );
  }
}
