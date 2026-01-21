import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/theme/app_theme.dart';

class AppAppBar extends StatefulWidget implements PreferredSizeWidget {
  const AppAppBar({
    this.title = '',
    this.titleWidget,
    this.leading,
    this.onLeadingIconPressed,
    this.actions = const [],
    this.showLeadingIcon = true,
    super.key,
  });

  final String title;
  final Widget? titleWidget;
  final Widget? leading;
  final void Function()? onLeadingIconPressed;
  final List<Widget> actions;
  final bool showLeadingIcon;

  @override
  State<AppAppBar> createState() => _AppAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppAppBarState extends State<AppAppBar> {
  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      title: Row(
        children: [
          if (!widget.showLeadingIcon) const SizedBox(width: 20),
          if (widget.titleWidget != null)
            widget.titleWidget!
          else if (widget.title.isNotEmpty)
            Text(widget.title, style: context.appStyles.titleLarge),
        ],
      ),

      leading: widget.showLeadingIcon
          ? widget.leading ?? IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: appColors.iconsPrimary,
              ),
              onPressed:
                  widget.onLeadingIconPressed ??
                  () => context.pop(),
            )
          : null,
      actions: [
        Row(
          children: [
            ...widget.actions,
            const SizedBox(width: 8),
          ],
        ),
      ],
    );
  }
}
