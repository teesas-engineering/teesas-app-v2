import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/style_guide/colors.dart';
import '../../../common/style_guide/style_guide.dart';

class AppAppBar extends StatefulWidget implements PreferredSizeWidget {
  const AppAppBar({
    this.title = '',
    this.titleWidget,
    this.leading,
    this.onLeadingIconPressed,
    this.actions = const [],
    this.centerTitle = false,
    this.showLeadingIcon = true,
    this.bottom,
    super.key,
  });

  final bool centerTitle;
  final String title;
  final Widget? titleWidget;
  final Widget? leading;
  final void Function()? onLeadingIconPressed;
  final List<Widget> actions;
  final bool showLeadingIcon;
  final PreferredSizeWidget? bottom;

  @override
  State<AppAppBar> createState() => _AppAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppAppBarState extends State<AppAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: widget.centerTitle,
      backgroundColor: AppColors.white,
      bottom: widget.bottom,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!widget.showLeadingIcon) const SizedBox(width: 20),
          if (widget.titleWidget != null)
            widget.titleWidget!
          else if (widget.title.isNotEmpty)
            Text(
              widget.title,
              style: AppTypography.titleLarge.copyWith(
                color: AppColors.textPrimary,
              ),
            ),
        ],
      ),
      leading: widget.showLeadingIcon
          ? widget.leading ??
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: AppColors.iconsPrimary,
                  ),
                  onPressed: widget.onLeadingIconPressed ?? () => context.pop(),
                )
          : null,
      actions: [
        Row(children: [...widget.actions, const SizedBox(width: 8)]),
      ],
    );
  }
}
