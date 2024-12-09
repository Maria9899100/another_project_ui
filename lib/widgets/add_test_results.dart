import 'package:another_project_ui/widgets/outlined_container.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class AddTestResults extends StatelessWidget {
  const AddTestResults({super.key,
    required this.testName,
    required this.gainedMark,
    required this.outOf,
    required this.testNum});

  final String testName;
  final double gainedMark;
  final double outOf;
  final int testNum;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$testNum. Class Test',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppTheme.textColor),
          ),
          Gap(4.h),
          OutlinedContainer(
            width: 350.w,
            height: 48.h,
            borderRadius: 10,
            borderWidth: 0.5,
            borderColor: AppTheme.grey3,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                testName,
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: AppTheme.textColor),
              ),
            ),
          ),
          Gap(5.h),
          Text(
            'Marks',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
                color: AppTheme.textColor),
          ),
          Gap(4.h),
          Row(
            children: [
              SizedBox(
                width: 150.w,
                height: 48.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedContainer(
                      width: 49,
                      height: 48,
                      verticalPadding: 12,
                      horizontalPadding: 15,
                      borderColor: AppTheme.grey3,
                      borderWidth: 0.5,
                      borderRadius: 10,
                      child: Text('$gainedMark',
                        style: TextStyle(
                          color: AppTheme.textColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Text(
                      'Out of',
                      style: TextStyle(
                          color: AppTheme.textColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                    OutlinedContainer(
                      width: 49,
                      height: 48,
                      verticalPadding: 12,
                      horizontalPadding: 15,
                      borderColor: AppTheme.grey3,
                      borderWidth: 0.5,
                      borderRadius: 10,
                      child: Text(
                        '$outOf',
                        style: TextStyle(
                          color: AppTheme.textColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(17.w),
              GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'science-alim-result.pdf',
                      style: TextStyle(
                          color: AppTheme.green,
                          fontWeight: FontWeight.w400,
                          fontSize: 15),
                    ),
                    Gap(5.w),
                    SvgPicture.asset('assets/svgs/download.svg')
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
    ;
  }
}
