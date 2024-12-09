import 'package:flutter/material.dart';

import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:flutter_svg/svg.dart';

class ReportActions extends StatefulWidget {
  ReportActions({
    super.key,
    required this.reportAction,
    required this.w1SelectedAction,
    required this.w3SelectedAction,
    required this.w4SelectedAction,
    required this.w5SelectedAction, required this.onPressedW1, required this.onPressedW3, required this.onPressedW4, required this.onPressedW5,
  });

  final String reportAction;
  final VoidCallback onPressedW1;
  final VoidCallback onPressedW3;
  final VoidCallback onPressedW4;
  final VoidCallback onPressedW5;
  final String w1SelectedAction;
  final String w3SelectedAction;
  final String w4SelectedAction;
  final String w5SelectedAction;

  @override
  State<ReportActions> createState() => _ReportActionsState();
}

class _ReportActionsState extends State<ReportActions> {
   bool w1Selected = false;

   bool w3Selected = false;

   bool w4Selected = false;

   bool w5Selected = false;

  @override
  Widget build(BuildContext context) {
    w1Selected = widget.reportAction == widget.w1SelectedAction;
    w3Selected = widget.reportAction == widget.w3SelectedAction;
    w4Selected = widget.reportAction == widget.w4SelectedAction;
    w5Selected = widget.reportAction == widget.w5SelectedAction;
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: Text(
            widget.reportAction,
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
              onPressed:widget.onPressedW1,
              iconSize: 21,
              icon: w1Selected
                  ? SvgPicture.asset('assets/svgs/selected_green.svg')
                  : SvgPicture.asset('assets/svgs/not_selected.svg')),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              iconSize: 21,
              onPressed: () {},
              icon: SvgPicture.asset('assets/svgs/not_selected_red.svg')),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              iconSize: 21,
              onPressed: widget.onPressedW3,
              icon: w3Selected
                  ? SvgPicture.asset('assets/svgs/selected_green.svg')
                  : SvgPicture.asset('assets/svgs/not_selected.svg')),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              iconSize: 21,
              onPressed: widget.onPressedW4,
              icon: w4Selected
                  ? SvgPicture.asset('assets/svgs/selected_green.svg')
                  : SvgPicture.asset('assets/svgs/not_selected.svg')),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
              iconSize: 21,
              onPressed: widget.onPressedW5,
              icon: w5Selected
                  ? SvgPicture.asset('assets/svgs/selected_green.svg')
                  : SvgPicture.asset('assets/svgs/not_selected.svg')),
        ),
      ],
    );
  }
}
