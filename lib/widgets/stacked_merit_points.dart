import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StackedMeritPoints extends StatelessWidget {
  const StackedMeritPoints({super.key, required this.meritPoints});
final List<int> meritPoints;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.0*(meritPoints.length),
      child: Stack(
        children: List.generate(
          meritPoints.length,
              (index) => Transform.translate(
            offset: Offset(0,index * 30.h),
            child: Container(
              height: 42.h,
              width: 42.w,
              decoration: BoxDecoration(
                color: (meritPoints[index] < 0) ? AppTheme.red : AppTheme
                    .green,
                border: Border.all(
                  width: 2,
                  color: AppTheme.white,
                ),
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: (meritPoints[index] < 0) ? Text('${meritPoints[index]}',
                style: TextStyle(color: AppTheme.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,),) :Text('+${meritPoints[index]}',
                style: TextStyle(color: AppTheme.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,),),
            ),
          ),
        ).toList(),
      ),
    );
  }
}
