// import 'package:flutter/material.dart';
//
// import 'package:another_project_ui/main_page/app_colors.dart';
// import 'package:flutter_svg/svg.dart';
//
// class ReusableChecklist extends StatefulWidget {
//   ReusableChecklist({
//     super.key,
//     required this.reportAction,
//     required this.onPressedW1, required this.onPressedW3, required this.onPressedW4, required this.onPressedW5, required this.numOfCheckbox, required this.selectedAction,
//   });
//
//   final String reportAction;
//   final List<VoidCallback> onPressed;
//   final List<String> selectedAction;
//   final int numOfCheckbox;
//
//   @override
//   State<ReusableChecklist> createState() => _ReusableChecklistState();
// }
//
// class _ReusableChecklistState extends State<ReusableChecklist> {
//  List<bool> selectedCheckbox=[];
//  void initState(){
//    super.initState();
//    selectedCheckbox=List.filled(widget.numOfCheckbox, false);
//  }
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Expanded(
//           flex: 4,
//           child: Text(
//             widget.reportAction,
//             style: TextStyle(
//               color: AppTheme.textColor,
//               fontWeight: FontWeight.w500,
//               fontSize: 13,
//             ),
//           ),
//         ),
//         Row(
//           children: List.generate(widget.numOfCheckbox, (index) {
//             return Expanded(
//               flex: 1,
//               child: IconButton(
//                   onPressed: widget.onPressedW1,
//                   iconSize: 21,
//                   icon: widget.reportAction==widget.selectedAction[index]
//                       ? SvgPicture.asset('assets/svgs/selected_green.svg')
//                       : SvgPicture.asset('assets/svgs/not_selected.svg')),
//             );
//           }
//           )
//             // Expanded(
//             //   flex: 4,
//             //   child: Text(
//             //     widget.reportAction,
//             //     style: TextStyle(
//             //       color: AppTheme.textColor,
//             //       fontWeight: FontWeight.w500,
//             //       fontSize: 13,
//             //     ),
//             //   ),
//             // ),
//             // Expanded(
//             //   flex: 1,
//             //   child: IconButton(
//             //       onPressed:widget.onPressedW1,
//             //       iconSize: 21,
//             //       icon: w1Selected
//             //           ? SvgPicture.asset('assets/svgs/selected_green.svg')
//             //           : SvgPicture.asset('assets/svgs/not_selected.svg')),
//             // ),
//             // Expanded(
//             //   flex: 1,
//             //   child: IconButton(
//             //       iconSize: 21,
//             //       onPressed: () {},
//             //       icon: SvgPicture.asset('assets/svgs/not_selected_red.svg')),
//             // ),
//             // Expanded(
//             //   flex: 1,
//             //   child: IconButton(
//             //       iconSize: 21,
//             //       onPressed: widget.onPressedW3,
//             //       icon: w3Selected
//             //           ? SvgPicture.asset('assets/svgs/selected_green.svg')
//             //           : SvgPicture.asset('assets/svgs/not_selected.svg')),
//             // ),
//             // Expanded(
//             //   flex: 1,
//             //   child: IconButton(
//             //       iconSize: 21,
//             //       onPressed: widget.onPressedW4,
//             //       icon: w4Selected
//             //           ? SvgPicture.asset('assets/svgs/selected_green.svg')
//             //           : SvgPicture.asset('assets/svgs/not_selected.svg')),
//             // ),
//             // Expanded(
//             //   flex: 1,
//             //   child: IconButton(
//             //       iconSize: 21,
//             //       onPressed: widget.onPressedW5,
//             //       icon: w5Selected
//             //           ? SvgPicture.asset('assets/svgs/selected_green.svg')
//             //           : SvgPicture.asset('assets/svgs/not_selected.svg')),
//             // ),
//         ),
//       ],
//     );
//   }
// }
