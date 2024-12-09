import 'package:flutter/material.dart';

import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class BehaviorReport extends StatefulWidget {
  const BehaviorReport({
    super.key,
    required this.text,
    required this.onChangedWeek1,
    required this.onChangedWeek2,
    required this.onChangedWeek3,
    required this.onChangedWeek4,
    required this.onChangedWeek5,
  });

  final String text;
  final ValueChanged<List<String>> onChangedWeek1;
  final ValueChanged<List<String>> onChangedWeek2;
  final ValueChanged<List<String>> onChangedWeek3;
  final ValueChanged<List<String>> onChangedWeek4;
  final ValueChanged<List<String>> onChangedWeek5;

  @override
  State<BehaviorReport> createState() => _BehaviorReportState();
}

class _BehaviorReportState extends State<BehaviorReport> {
  bool w1Selected = false;

  bool w2Selected = false;

  bool w3Selected = false;

  bool w4Selected = false;

  bool w5Selected = false;

  List<String> week1 = [];
  List<String> week2 = [];
  List<String> week3 = [];
  List<String> week4 = [];
  List<String> week5 = [];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            widget.text,
            style: TextStyle(
              color: AppTheme.textColor,
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              onPressed: () {
                setState(() {
                  w1Selected = !w1Selected;
                  if (week1.contains(widget.text)) {
                    week1.remove(widget.text);
                    widget.onChangedWeek1(week1);
                  }
                    week1.add(widget.text);
                    widget.onChangedWeek1(week1);
                });
              },
              icon: (widget.text == 'Disruption' || widget.text == 'Off Task')
                  ? (w1Selected
                      ? SvgPicture.asset('assets/svgs/selected_red.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg'))
                  : w1Selected
                      ? SvgPicture.asset('assets/svgs/selected_green.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg')),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              onPressed: () {
                setState(() {
                  w2Selected = !w2Selected;
                  if (week2.contains(widget.text)) {
                    week2.remove(widget.text);
                    widget.onChangedWeek2(week2);
                  }
                  week2.add(widget.text);
                  widget.onChangedWeek2(week2);
                });
              },
              icon: (widget.text == 'Disruption' || widget.text == 'Off Task')
                  ? (w2Selected
                      ? SvgPicture.asset('assets/svgs/selected_red.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg'))
                  : w2Selected
                      ? SvgPicture.asset('assets/svgs/selected_green.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg')),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              onPressed: () {
                setState(() {
                  w3Selected = !w3Selected;
                  if (week3.contains(widget.text)) {
                    week3.remove(widget.text);
                  }
                    week3.add(widget.text);
                  widget.onChangedWeek3(week3);
                });
              },
              icon: (widget.text == 'Disruption' || widget.text == 'Off Task')
                  ? (w3Selected
                      ? SvgPicture.asset('assets/svgs/selected_red.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg'))
                  : w3Selected
                      ? SvgPicture.asset('assets/svgs/selected_green.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg')),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              onPressed: () {
                setState(() {
                  w4Selected = !w4Selected;
                  if (week4.contains(widget.text)) {
                    week4.remove(widget.text);
                  }
                    week4.add(widget.text);
                  widget.onChangedWeek4(week4);
                });
              },
              icon: (widget.text == 'Disruption' || widget.text == 'Off Task')
                  ? (w4Selected
                      ? SvgPicture.asset('assets/svgs/selected_red.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg'))
                  : w4Selected
                      ? SvgPicture.asset('assets/svgs/selected_green.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg')),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              onPressed: () {
                setState(() {
                  w5Selected = !w5Selected;
                  if (week5.contains(widget.text)) {
                    week5.remove(widget.text);
                  }
                    week5.add(widget.text);
                  widget.onChangedWeek5(week5);
                });
              },
              icon: (widget.text == 'Disruption' || widget.text == 'Off Task')
                  ? (w5Selected
                      ? SvgPicture.asset('assets/svgs/selected_red.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg'))
                  : w5Selected
                      ? SvgPicture.asset('assets/svgs/selected_green.svg')
                      : SvgPicture.asset('assets/svgs/not_selected.svg')),
        ),
      ],
    );
  }
}
