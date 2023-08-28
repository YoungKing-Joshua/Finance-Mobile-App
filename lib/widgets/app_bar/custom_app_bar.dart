import 'package:flutter/material.dart';
import 'package:joshua_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? getVerticalSize(65),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        mediaQueryData.size.width,
        height ?? getVerticalSize(65),
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgOutline:
        return Container(
          height: getVerticalSize(65),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
            border: Border(
              bottom: BorderSide(
                color: theme.colorScheme.onPrimary.withOpacity(0.6),
                width: getHorizontalSize(4),
              ),
            ),
          ),
        );
      case Style.bgFill:
        return Container(
          height: getVerticalSize(65),
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: theme.colorScheme.onPrimary.withOpacity(1),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgOutline,
  bgFill,
}
