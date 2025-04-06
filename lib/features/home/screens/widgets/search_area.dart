import 'package:credpal_test/constants/app_colors.dart';
import 'package:credpal_test/features/home/screens/components/cd_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SearchArea extends StatelessWidget {
  const SearchArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          height: 40,
          width: 309.w,
          padding: const EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            color: AppColors.lightSecColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/search.svg"),
              Gap(10),
              CDText.avenir(
                'Search for products or stores',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff9494B8),
              ),
            ],
          ),
        ),
        Container(
          height: 45,
          width: 45,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.lightSecColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset("assets/icons/scan.svg"),
        )
      ]),
    );
  }
}
