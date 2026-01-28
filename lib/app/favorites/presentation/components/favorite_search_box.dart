import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../../../_shared/widgets/app_input_field.dart';
import '../../../dashboard/presentation/modal/filter_modal.dart';

class FavoriteSearchBox extends StatelessWidget {
  const FavoriteSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: AppInputField(
                backgroundColor: AppColors.bgPrimary,
                borderColor: AppColors.borderTertiary,
                borderRadius: BorderRadius.circular(8),
                hintText: 'Search',
                prefixIcon: IconButton(onPressed: (){}, icon: SvgPicture.asset(
                  AppAssets.search,
                  width: 24,
                  height: 24,
                )),
              ),
            ),
            12.width,
            InkWell(
              onTap: () => FilterModal.show(context),
              borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius/2),
                ),
                child: const Center(
                  child: Icon(Icons.tune, color: AppColors.textBrand, size: 20),
                ),
              ),
            ),
          ],
        ),
        16.verticalSpace,
      ],
    );
  }
}
