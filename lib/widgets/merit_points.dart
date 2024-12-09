import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:another_project_ui/widgets/outlined_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class MeritPoints extends StatelessWidget {
  const MeritPoints(
      {super.key, required this.meritInformation});


final Map<String,dynamic> meritInformation;
  @override
  Widget build(BuildContext context) {
    return OutlinedContainer(
      borderWidth: 1,
borderColor: AppTheme.greyPer20,
        borderRadius:8 ,
        height: 67.h,
        width: 350.w,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              height: 38,
              width: 38,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: (meritInformation['points']??0) >0?AppTheme.greenPer10:AppTheme.redPer10,

              ),
              child: (meritInformation['points']??0) > 0 ? Text(
                '+${meritInformation['points']??0}',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: AppTheme.green),
              ):Text(
                '${meritInformation['points']??0}',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: AppTheme.red),
              ),
            ),
            Gap(10.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${meritInformation['category']}' ??'',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: AppTheme.textColor,
                      ),
                    ),
                    TextSpan(
                      text: ' awarded by ${meritInformation['teacher']??''}',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.textColorPer90,
                      ),
                    ), TextSpan(
                      text: (meritInformation['subject'])!=''?' in ${meritInformation['subject']??''}':'',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: AppTheme.textColorPer90,
                      ),
                    ),
                  ]
                ),
                ),
                Text(meritInformation['date']??'', style:  TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.textColorPer60,
                ),)
              ],
            )
          ],
        ));
  }
}
