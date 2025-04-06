import 'package:credpal_test/constants/app_colors.dart';
import 'package:credpal_test/features/home/data/merchants_data.dart';
import 'package:credpal_test/features/home/screens/components/cd_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'components/merchant_card.dart';
import 'widgets/products_grid.dart';
import 'widgets/search_area.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          //* App Bar with Header
          SliverToBoxAdapter(
            child: Container(
              color: AppColors.secondary,
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + (kIsWeb ? 20 : 0),
                left: 20,
                right: 20,
                bottom: 50,
              ),
              child: SafeArea(
                child: Row(
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CDText.avenir(
                          'Pay later',
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                        ),
                        Row(
                          children: [
                            CDText.avenir(
                              'everywhere',
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                            ),
                            const Gap(8),
                            const Icon(
                              Icons.info,
                              size: 16,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CDText(
                          'Shopping limit: ₦0',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        Gap(5),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: const Text('Activate Credit'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverGap(20),

          //* Search Area
          SearchArea(),

          SliverGap(25),

          //* Products Section
          ProductsGridSection(),

          //* Featured Merchants Section
          SliverToBoxAdapter(
            child: ColoredBox(
              color: AppColors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CDText.avenir(
                      'Featured Merchants',
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: CDText.productSana(
                        'View all',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //* Merchants Grid
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
            sliver: SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 20,
                crossAxisSpacing: 16,
                childAspectRatio: 0.8,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return MerchantCard(
                    merchant: MerchantsData.getMerchants()[index],
                  );
                },
                childCount: MerchantsData.getMerchants().length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
