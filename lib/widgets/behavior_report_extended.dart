import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:another_project_ui/widgets/behavior_report.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BehaviorReportExtended extends StatefulWidget {
BehaviorReportExtended({super.key, required this.behaviors, required this.onChanged1, required this.onChanged2, required this.onChanged3, required this.onChanged4, required this.onChanged5});
final List<String> behaviors;
  final ValueChanged<List<String>> onChanged1 ;
 final ValueChanged<List<String>> onChanged2 ;
 final ValueChanged<List<String>> onChanged3 ;
 final ValueChanged<List<String>> onChanged4 ;
 final ValueChanged<List<String>> onChanged5 ;
  @override
  State<BehaviorReportExtended> createState() => _BehaviorReportExtendedState();
}
List<String> week1ValueBehavior = [];
List<String> week2ValueBehavior = [];
List<String> week3ValueBehavior = [];
List<String> week4ValueBehavior = [];
List<String> week5ValueBehavior = [];


class _BehaviorReportExtendedState extends State<BehaviorReportExtended> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.behaviors.map((item) {
        return Column(
          children: [
            BehaviorReport(
              onChangedWeek1: (value) {
                setState(() {
                  for(int i=0;i<value.length;i++)
                    {
                      if(week1ValueBehavior.contains(value[i]))
                      {
                        week1ValueBehavior.remove(value[i]);
                      }
                      else{week1ValueBehavior.add(value[i]);
                      }
                    }widget.onChanged1(week1ValueBehavior);
                });
              },
              onChangedWeek2: (value) {
                setState(() {
                  for(int i=0;i<value.length;i++)
                  {
                    if(week2ValueBehavior.contains(value[i]))
                    {
                      week2ValueBehavior.remove(value[i]);
                    }
                    else{week2ValueBehavior.add(value[i]);

                  }}widget.onChanged2(week2ValueBehavior);
                });
              },
              onChangedWeek3: (value) {
                setState(() {
                  for(int i=0;i<value.length;i++)
                  {
                    if(week3ValueBehavior.contains(value[i]))
                    {
                      week3ValueBehavior.remove(value[i]);
                    }
                    else{week3ValueBehavior.add(value[i]);}
                  }widget.onChanged3(week3ValueBehavior);
                });
              },
              onChangedWeek4: (value) {
                setState(() {
                  for(int i=0;i<value.length;i++)
                  {
                    if(week4ValueBehavior.contains(value[i]))
                    {
                      week4ValueBehavior.remove(value[i]);
                    }
                    else{week4ValueBehavior.add(value[i]);
                    }
                  }widget.onChanged4(week4ValueBehavior);
                });
              },
              onChangedWeek5: (value) {
                setState(() {
                  for(int i=0;i<value.length;i++)
                  {
                    if(week5ValueBehavior.contains(value[i]))
                    {
                      week5ValueBehavior.remove(value[i]);
                    }
                    else{week5ValueBehavior.add(value[i]);
                   }
                  } widget.onChanged5(week5ValueBehavior);
                });
              },
              text: item,
            ), SizedBox(
              width: 350.w,
              child: Divider(
                color: AppTheme.grey2,
                thickness: 1,
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}
