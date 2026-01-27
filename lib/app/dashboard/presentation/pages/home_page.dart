import 'package:flutter/cupertino.dart';

import '../../../../common/dimens/app_dimens.dart';
import '../../../../common/extensions/num_extension.dart';
import '../../../../common/style_guide/colors.dart';
import '../../../../common/style_guide/style_guide.dart';
import '../component/home_card_option_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.pagePadding,
        vertical: Dimens.pagePadding,
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: HomeCardOptionCard(
                  onclick: () {},
                  backgroundColor: AppColors.homeCardBorderColor1,
                  boarderColor: AppColors.homeCardBackgroundColor1,
                  asset: AppAssets.videoImage,
                  name: 'Video Tutorial',
                ),
              ),
              16.width,
              Expanded(
                child: HomeCardOptionCard(
                  onclick: () {},
                  backgroundColor: AppColors.homeCardBorderColor2,
                  boarderColor: AppColors.homeCardBackgroundColor2,
                  asset: AppAssets.testImage,
                  name: 'Mock Practice',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
