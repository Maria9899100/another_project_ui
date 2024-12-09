import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:another_project_ui/widgets/outlined_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, required this.onTap});
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child:OutlinedContainer(
          height: 36,
          width: 93,
          borderRadius:
          50,
          horizontalPadding:
          14.w,
          verticalPadding:
          6.h,
          backgroundColor:
          AppTheme
              .blue,
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment
                .spaceAround,
            children: [
              SvgPicture
                  .asset(
                  'assets/svgs/check_circle.svg'),
              Text(
                'Submit',
                style:
                TextStyle(
                  color: AppTheme
                      .white,
                  fontSize:
                  12,
                  fontWeight:
                  FontWeight.w600,
                ),
              )
            ],
          )),
    );
  }
}
