import 'package:credpal_test/features/home/screens/components/cd_text.dart';
import 'package:credpal_test/models/merchant.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MerchantCard extends StatelessWidget {
  final Merchant merchant;

  const MerchantCard({super.key, required this.merchant});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            // Merchant Logo Container
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: merchant.logoUrl.isNotEmpty
                    ? Image.asset(
                        merchant.logoUrl,
                        fit: BoxFit.fitWidth,
                      )
                    : Icon(
                        Icons.store,
                        size: 30,
                        color: Colors.grey[400],
                      ),
              ),
            ),
            // Verification Badge
            if (merchant.isOnline)
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              ),
          ],
        ),
        const Gap(8),
        CDText.avenir(
          merchant.name,
          fontSize: 12,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
