import 'package:flutter/material.dart';

import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AreasToImprove extends StatefulWidget {
  const AreasToImprove(
      {super.key, required this.onChanged, required this.areasToImprove});

  final ValueChanged<List<String>> onChanged;
  final List<String> areasToImprove;

  @override
  State<AreasToImprove> createState() => _AreasToImproveState();
}

class _AreasToImproveState extends State<AreasToImprove> {
  List<String> selectedItem = [];
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.areasToImprove.map((items)
    {
      isSelected=selectedItem.contains(items);
      return  Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 298.w,
                child: Text(
                  items,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    color: AppTheme.textColor,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (selectedItem.contains(items)) {
                      selectedItem.remove(items);
                    }
                    else{selectedItem.add(items);}

                    widget.onChanged(selectedItem);
                  });
                },
                icon: (isSelected)
                    ? SvgPicture.asset('assets/svgs/selected_red.svg')
                    : SvgPicture.asset('assets/svgs/not_selected.svg'),
              )
            ],
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
    }
    ).toList(),

    );
  }
}
