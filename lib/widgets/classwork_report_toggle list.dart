
import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:another_project_ui/widgets/report_actions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassworkReportToggle extends StatefulWidget {
  const ClassworkReportToggle({super.key, required this.listOfText, required this.onChangeW1, required this.onChangeW3, required this.onChangeW4, required this.onChangeW5});
  final List<String> listOfText;
  final ValueChanged onChangeW1;
  final ValueChanged onChangeW3;
  final ValueChanged onChangeW4;
  final ValueChanged onChangeW5;

  @override
  State<ClassworkReportToggle> createState() => _ClassworkReportToggleState();
}

class _ClassworkReportToggleState extends State<ClassworkReportToggle> {
  ValueNotifier<String> w1Notifier = ValueNotifier('');
  String w1SelectedItem = '';
  String w3SelectedItem = '';
  String w4SelectedItem = '';
  String w5SelectedItem = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.listOfText.map((item) {
        return Column(
          children: [
            ReportActions(
              reportAction: item,
              w1SelectedAction: w1SelectedItem,
              w3SelectedAction: w3SelectedItem,
              w4SelectedAction: w4SelectedItem,
              w5SelectedAction: w5SelectedItem,
              onPressedW1: () {
                setState(() {
                  w1SelectedItem = item;
                  widget.onChangeW1(w1SelectedItem);
                });
              },
              onPressedW3: () {
                setState(() {
                  w3SelectedItem = item;
                  widget.onChangeW3(w3SelectedItem);
                });
              },
              onPressedW4: () {
                setState(() {
                  w4SelectedItem = item;
                  widget.onChangeW4(w4SelectedItem);
                });
              },
              onPressedW5: () {
                setState(() {
                  w5SelectedItem = item;
                  widget.onChangeW5(w5SelectedItem);
                });
              },
            ),
            SizedBox(
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
