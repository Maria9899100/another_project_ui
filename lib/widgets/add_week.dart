import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:another_project_ui/widgets/outlined_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class AddWeek extends StatelessWidget {
  const AddWeek({super.key, required this.chapter, required this.week});

  final String chapter;
  final int week;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350.w,
      height: 80.h,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/week_icon.svg',),
              Gap(4.w),
              Text('Week $week',
                style: TextStyle(
                  color: AppTheme.textColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),),
            ],
          ),
          Gap(6.h),
          OutlinedContainer(
            borderRadius: 10,
            borderColor: AppTheme.grey3,
            width: 350.w,
              height: 48.h,
              child: Center(
                child: Text(chapter,
                  style: TextStyle(
                    color: AppTheme.textColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ), maxLines: 1,
                overflow: TextOverflow.ellipsis,),
              ),)
        ],
      ),
    );
  }
}
