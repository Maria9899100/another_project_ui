import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class ReportTitle extends StatelessWidget {
  const ReportTitle({super.key, required this.reportTitle});

  final String reportTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
            flex: 10,
            child: Text(
              reportTitle,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppTheme.blue,
              ),
            ),
          ),
          Expanded(
           flex: 2,
            child: Text(
              'W 1',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppTheme.blue,
              ),
            ),
          ),
          Expanded(
           flex: 2,
            child: Text(
              'W 2',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppTheme.blue,
              ),
            ),
          ),
          Expanded(
           flex: 2,
            child: Text(
              'W 3',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppTheme.blue,
              ),
            ),
          ),
          Expanded(
           flex: 2,
            child: Text(
              'W 4',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppTheme.blue,
              ),
            ),
          ),
          Expanded(
           flex: 2,
            child: Text(
              'W 5',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppTheme.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
