import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../main_page/app_colors.dart';

class SwitchCustom extends StatefulWidget {
  const SwitchCustom({super.key});

  @override
  State<SwitchCustom> createState() => _SwitchCustomState();
}

class _SwitchCustomState extends State<SwitchCustom> {
  bool _isSelected=false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 14.h,
            width: 34.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              color: AppTheme.white,
              border: Border.all(
                      color: AppTheme.green,
                    )
            ),
          ),

          AnimatedPositioned(
            duration: const Duration(milliseconds: 30),
            left: _isSelected?13: 0,
            right: _isSelected?0: 13,
            child: Container(height: 20.h,
              width: 20.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: AppTheme.green,
              ),

            ),
          ),
        ],
      ),
    );
  }
}
