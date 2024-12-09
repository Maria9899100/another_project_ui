
import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:flutter/material.dart';

class OutlinedContainer extends StatelessWidget {
  const OutlinedContainer({super.key, this.height, this.width, required this.child, this.backgroundColor, this.borderColor, this.borderWidth, this.borderRadius, this.horizontalPadding, this.verticalPadding});
final double? height;
final double? width;
final Widget child;
final Color? backgroundColor;
final Color? borderColor;
final double? borderWidth;
final double? borderRadius;
final double? horizontalPadding;
final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding?? 19,
      vertical: verticalPadding??10),
      decoration: BoxDecoration(
        color: backgroundColor??AppTheme.white,
        border: Border.all(
          color: borderColor??AppTheme.greyPer40,
          width: borderWidth??1,
        ),
        borderRadius: BorderRadius.circular(borderRadius??15),
      ),
      child: child,

    );
  }
}
