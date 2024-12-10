import 'package:flutter/material.dart';

import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ReusableChecklist extends StatefulWidget {
  ReusableChecklist({
    super.key,
    required this.numOfCheckbox,
    required this.listOfText, required this.onChanged,
  });

  final List<String> listOfText;
  final int numOfCheckbox;
  final ValueChanged<List<String>> onChanged;

  @override
  State<ReusableChecklist> createState() => _ReusableChecklistState();
}

class _ReusableChecklistState extends State<ReusableChecklist> {
List<String> selectedItems = [];
@override
void initState()
{
    super.initState();
    selectedItems=List.filled(widget.numOfCheckbox, '');
}  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ...widget.listOfText.map((text) {
        return Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Text(
                    text,
                    style: TextStyle(
                      color: AppTheme.textColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ),
                ...List.generate(widget.numOfCheckbox, (index) {
                  return Expanded(
                    flex: 1,
                    child: IconButton(
                      iconSize: 21,
                      icon: selectedItems[index]==text
                          ? SvgPicture.asset('assets/svgs/selected_green.svg')
                          : SvgPicture.asset('assets/svgs/not_selected.svg'),
                      onPressed: () {
                        setState(() {
                          selectedItems[index]=text;
                          widget.onChanged(selectedItems);
                        });
                      },
                    ),
                  );
                })
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
      }),
    ]);
  }
}
