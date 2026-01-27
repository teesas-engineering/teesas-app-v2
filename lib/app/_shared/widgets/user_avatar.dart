import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../common/style_guide/style_guide.dart';
import '../enum/gender.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({this.gender,this.onTap, this.url, super.key});

  final Gender? gender;
  final String? url;

  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 42,
        height: 42,
        child: Stack(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: url != null
                  ? NetworkImage(url!)
                  : AssetImage(gender?.getAvatar() ?? AppAssets.maleStudent),
            ),
            Positioned(
              bottom: 0,
              right: 5,
              child: SvgPicture.asset(AppAssets.nigerianFlag,width: 12,height: 12,),
            ),
          ],
        ),
      ),
    );
  }
}
