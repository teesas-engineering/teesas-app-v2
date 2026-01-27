import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../common/style_guide/style_guide.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    required this.asset,
    this.color,
    this.value,
    super.key,
    this.onClick,
    this.width,this.height
  });

  final String asset;
  final String? value;
  final Color? color;
  final VoidCallback? onClick;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: onClick,
      child: Row(
        children: [
          SvgPicture.asset(asset, width: width??24, height: height??24),
          if (value != null) ...[
            const SizedBox(width: 8),
            Text(
              value!,
              style: AppTypography.titleMedium.copyWith(color: color),
            ),
          ],
        ],
      ),
    );
  }
}
