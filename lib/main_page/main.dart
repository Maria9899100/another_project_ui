import 'package:another_project_ui/main_page/app_colors.dart';
import 'package:another_project_ui/widgets/add_test_results.dart';
import 'package:another_project_ui/widgets/add_week.dart';
import 'package:another_project_ui/widgets/areas_to_improve.dart';
import 'package:another_project_ui/widgets/behavior_report_extended.dart';
import 'package:another_project_ui/widgets/merit_points.dart';
import 'package:another_project_ui/widgets/outlined_container.dart';
import 'package:another_project_ui/widgets/report_title.dart';
import 'package:another_project_ui/widgets/stacked_merit_points.dart';
import 'package:another_project_ui/widgets/submit_button.dart';
import 'package:another_project_ui/widgets/switch.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import 'package:another_project_ui/widgets/classwork_report_toggle%20list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(428, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: MyHomePage(),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> chapters = [
    'Chapter 1 : A Closer Look: McGraw Hill (Page 23-25)',
    'Chapter 2 : A Closer Look:(Page 26-30)'
  ];
  List<String> testName = [
    'Special Mock',
  ];
  List<double> gainedMark = [
    7,
  ];
  List<double> outOf = [
    10,
  ];
  Map<String, List<int>> datesOfMeritPoints = {
    "Date1": [1, -2, 3],
    "Date2": [-4, 5, 6],
    "Date3": [7, 8, -9],
    "Date4": [0, 8, -9],
  };
  bool isSwitched = false;
  String week1Value = '';
  String week3Value = '';
  String week4Value = '';
  String week5Value = '';
  List<String> week1ValueBehavior = [];
  List<String> week2ValueBehavior = [];
  List<String> week3ValueBehavior = [];
  List<String> week4ValueBehavior = [];
  List<String> week5ValueBehavior = [];
  List<String> areasToImprove= [];
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _textEditingControllerEvolution =
  TextEditingController();
  TextEditingController _textEditingControllerTest = TextEditingController();
  TextEditingController _textEditingControllerMarks1 = TextEditingController();
  TextEditingController _textEditingControllerMarks2 = TextEditingController();
  FocusNode _focusNode = FocusNode();
  FocusNode _focusNode2 = FocusNode();
  bool addWeekOn = false;
  bool addTestOn = false;

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
    _textEditingControllerEvolution.dispose();
    _textEditingControllerMarks1.dispose();
    _textEditingControllerTest.dispose();
    _textEditingControllerMarks2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(week1ValueBehavior);
    print(week2ValueBehavior);
    print(week3ValueBehavior);
    print(week4ValueBehavior);
    print(week5ValueBehavior);
    setState(() {
      _focusNode.unfocus();
      _focusNode2.unfocus();
    });
    return GestureDetector(
      onTap: () {
        _focusNode.unfocus();
      },
      child: Scaffold(
        backgroundColor: AppTheme.white,
        body: Column(children: [
          Gap(42.h),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 19.w,
              vertical: 14.h,
            ),
            decoration: BoxDecoration(
                border: BorderDirectional(
                    bottom: BorderSide(
                      color: AppTheme.blue,
                      width: 0.5,
                    ))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppTheme.blue,
                        width: 1,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/svgs/back_icon.svg',
                      width: 18,
                      height: 18,
                      fit: BoxFit.none,
                    ),
                  ),
                  onPressed: () {},
                ),
                Text(
                  'Details',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.blue2,
                  ),
                ),
                IconButton(
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: AppTheme.blue,
                        width: 1,
                      ),
                    ),
                    child: SvgPicture.asset(
                      'assets/svgs/text_icon.svg',
                      width: 20,
                      height: 19,
                      fit: BoxFit.none,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ), //Appbar
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 105,
                          width: 105,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                              width: 1,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset('assets/images/kid_photo.png'),
                        ),
                        Gap(15.w),
                        SizedBox(
                          width: 270.w,
                          height: 105.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Alim Hossain',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Divider(
                                color: AppTheme.grey,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svgs/year_group_icon.svg',
                                    height: 12,
                                    width: 15,
                                    fit: BoxFit.none,
                                  ),
                                  Gap(5.w),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Year Group: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: AppTheme.textColor,
                                        fontSize: 14,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '10',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: AppTheme.textColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Gap(5.h),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/svgs/lesson_icon.svg',
                                    height: 12,
                                    width: 15,
                                    fit: BoxFit.none,
                                  ),
                                  Gap(5.w),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Lessons: ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: AppTheme.textColor,
                                        fontSize: 14,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: '3',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: AppTheme.textColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //Account information
                    Gap(18.h),
                    OutlinedContainer(
                        width: 390.w,
                        child: SizedBox(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Topics Covered',
                                style: TextStyle(
                                    color: AppTheme.blue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Gap(11.h),
                              Divider(
                                color: AppTheme.grey2,
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Column(
                                      children: chapters.map((chapter) {
                                        return Column(
                                          children: [
                                            AddWeek(
                                                chapter: chapter,
                                                week:
                                                chapters.indexOf(chapter) +
                                                    1),
                                            Gap(15.w),
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                    addWeekOn
                                        ? SizedBox(
                                      width: 350.w,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset(
                                                'assets/svgs/week_icon.svg',
                                              ),
                                              Gap(4.w),
                                              Text(
                                                'Week ${chapters.length + 1}',
                                                style: TextStyle(
                                                  color:
                                                  AppTheme.textColor,
                                                  fontSize: 13,
                                                  fontWeight:
                                                  FontWeight.w500,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Gap(6.h),
                                          SizedBox(
                                            width: 350.w,
                                            child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: [
                                                Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 298.w,
                                                      height: 48,
                                                      child: TextField(
                                                        style: TextStyle(
                                                          fontWeight:
                                                          FontWeight
                                                              .w500,
                                                          fontSize: 13,
                                                          color: AppTheme
                                                              .textColor,
                                                        ),
                                                        focusNode:
                                                        _focusNode,
                                                        controller:
                                                        _textEditingController,
                                                        decoration:
                                                        InputDecoration(
                                                            hintText:
                                                            'Type here',
                                                            hintStyle:
                                                            TextStyle(
                                                              fontWeight:
                                                              FontWeight.w300,
                                                              fontSize:
                                                              13,
                                                              fontStyle:
                                                              FontStyle.italic,
                                                              color: AppTheme
                                                                  .textColor,
                                                            ),
                                                            border: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .circular(10
                                                                    .r),
                                                                borderSide: BorderSide(
                                                                    width: 0.5,
                                                                    color: AppTheme
                                                                        .grey3)),
                                                            focusedBorder: OutlineInputBorder(
                                                                borderRadius: BorderRadius
                                                                    .circular(
                                                                    10.r),
                                                                borderSide: BorderSide(
                                                                  color:
                                                                  AppTheme
                                                                      .textColor,
                                                                  width:
                                                                  1,
                                                                ))),
                                                      ),
                                                    ),
                                                    IconButton(
                                                        onPressed: () {
                                                          _textEditingController
                                                              .clear();
                                                        },
                                                        icon: SvgPicture
                                                            .asset(
                                                          'assets/svgs/delete.svg',
                                                          height: 15,
                                                          width: 15,
                                                          fit:
                                                          BoxFit.none,
                                                        ))
                                                  ],
                                                ),
                                                Gap(15),
                                                SubmitButton(
                                                  onTap: () {
                                                    setState(() {
                                                      if (_textEditingController
                                                          .text
                                                          .isNotEmpty) {
                                                        chapters.add(
                                                            _textEditingController
                                                                .text);
                                                        addWeekOn = false;
                                                      }
                                                      _textEditingController
                                                          .clear();
                                                      addWeekOn = false;
                                                    });
                                                  },
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                        : SizedBox.shrink(),
                                  ],
                                ),
                              ),
                              Gap(17.h),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    addWeekOn = true;
                                  });
                                },
                                child: OutlinedContainer(
                                    height: 36.h,
                                    width: 350.w,
                                    borderRadius: 500,
                                    borderWidth: 0,
                                    horizontalPadding: 134.w,
                                    verticalPadding: 6.h,
                                    backgroundColor: AppTheme.grey4per16,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/svgs/add_circle.svg'),
                                        Text(
                                          'Add Week',
                                          style: TextStyle(
                                            color: AppTheme.grey4,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )),
                    //Add week
                    Gap(20.h),
                    OutlinedContainer(
                        width: 390.w,
                        child: SizedBox(
                          child: Column(
                            children: [
                              Text(
                                'Test Results',
                                style: TextStyle(
                                    color: AppTheme.blue,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16),
                              ),
                              Gap(11.h),
                              Divider(
                                color: AppTheme.grey2,
                              ),
                              SizedBox(
                                child: Column(
                                  children: [
                                    Column(
                                      children: testName.map((value) {
                                        print(gainedMark[
                                        testName.indexOf(value)]);
                                        return Column(
                                          children: [
                                            AddTestResults(
                                                testName: value,
                                                gainedMark: gainedMark[
                                                testName.indexOf(value)],
                                                outOf: outOf[
                                                testName.indexOf(value)],
                                                testNum:
                                                testName.indexOf(value) +
                                                    1),
                                            Gap(17.w),
                                          ],
                                        );
                                      }).toList(),
                                    ),
                                    addTestOn
                                        ? SizedBox(
                                      height: 210.h,
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${testName.length +
                                                1}. Class Test',
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.w500,
                                                fontSize: 12,
                                                color:
                                                AppTheme.textColor),
                                          ),
                                          Gap(4.h),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 298.w,
                                                height: 48,
                                                child: TextField(
                                                  style: TextStyle(
                                                    fontWeight:
                                                    FontWeight.w500,
                                                    fontSize: 13,
                                                    color: AppTheme
                                                        .textColor,
                                                  ),
                                                  // focusNode: _focusNode2,
                                                  controller:
                                                  _textEditingControllerTest,
                                                  decoration:
                                                  InputDecoration(
                                                    hintText: 'Type here',
                                                    hintStyle: TextStyle(
                                                      fontWeight:
                                                      FontWeight.w300,
                                                      fontSize: 13,
                                                      fontStyle: FontStyle
                                                          .italic,
                                                      color: AppTheme
                                                          .textColor,
                                                    ),
                                                    border: OutlineInputBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10.r),
                                                        borderSide: BorderSide(
                                                            width: 0.5,
                                                            color: AppTheme
                                                                .grey3)),
                                                    focusedBorder:
                                                    OutlineInputBorder(
                                                      borderRadius:
                                                      BorderRadius
                                                          .circular(
                                                          10.r),
                                                      borderSide:
                                                      BorderSide(
                                                        color: AppTheme
                                                            .textColor,
                                                        width: 1,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                  onPressed: () {
                                                    _textEditingControllerTest
                                                        .clear();
                                                  },
                                                  icon: SvgPicture.asset(
                                                    'assets/svgs/delete.svg',
                                                    height: 15,
                                                    width: 15,
                                                    fit: BoxFit.none,
                                                  ))
                                            ],
                                          ),
                                          Gap(5.h),
                                          Text(
                                            'Marks',
                                            style: TextStyle(
                                                fontWeight:
                                                FontWeight.w500,
                                                fontSize: 12,
                                                color:
                                                AppTheme.textColor),
                                          ),
                                          Gap(4.h),
                                          Row(
                                            children: [
                                              SizedBox(
                                                width: 150.w,
                                                height: 48.h,
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                      width: 49,
                                                      height: 48,
                                                      child: TextField(
                                                        keyboardType: TextInputType
                                                            .numberWithOptions(
                                                            decimal:
                                                            true),
                                                        controller:
                                                        _textEditingControllerMarks1,
                                                        style: TextStyle(
                                                          color: AppTheme
                                                              .textColor,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500,
                                                          fontSize: 13,
                                                        ),
                                                        decoration:
                                                        InputDecoration(
                                                          hintText:
                                                          'Enter',
                                                          hintStyle:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w300,
                                                            fontSize: 13,
                                                            fontStyle:
                                                            FontStyle
                                                                .italic,
                                                            color: AppTheme
                                                                .textColor,
                                                          ),
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(10
                                                                  .r),
                                                              borderSide: BorderSide(
                                                                  width:
                                                                  0.5,
                                                                  color: AppTheme
                                                                      .grey3)),
                                                          focusedBorder:
                                                          OutlineInputBorder(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10.r),
                                                            borderSide:
                                                            BorderSide(
                                                              color: AppTheme
                                                                  .textColor,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'Out of',
                                                      style: TextStyle(
                                                          color: AppTheme
                                                              .textColor,
                                                          fontSize: 13,
                                                          fontWeight:
                                                          FontWeight
                                                              .w400),
                                                    ),
                                                    SizedBox(
                                                      width: 49,
                                                      height: 48,
                                                      child: TextField(
                                                        keyboardType: TextInputType
                                                            .numberWithOptions(
                                                            decimal:
                                                            true),
                                                        controller:
                                                        _textEditingControllerMarks2,
                                                        style: TextStyle(
                                                          color: AppTheme
                                                              .textColor,
                                                          fontWeight:
                                                          FontWeight
                                                              .w500,
                                                          fontSize: 13,
                                                        ),
                                                        decoration:
                                                        InputDecoration(
                                                          hintText:
                                                          'Enter',
                                                          hintStyle:
                                                          TextStyle(
                                                            fontWeight:
                                                            FontWeight
                                                                .w300,
                                                            fontSize: 13,
                                                            fontStyle:
                                                            FontStyle
                                                                .italic,
                                                            color: AppTheme
                                                                .textColor,
                                                          ),
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(10
                                                                  .r),
                                                              borderSide: BorderSide(
                                                                  width:
                                                                  0.5,
                                                                  color: AppTheme
                                                                      .grey3)),
                                                          focusedBorder:
                                                          OutlineInputBorder(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10.r),
                                                            borderSide:
                                                            BorderSide(
                                                              color: AppTheme
                                                                  .textColor,
                                                              width: 1,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Gap(17.w),
                                              GestureDetector(
                                                onTap: () {},
                                                child: SizedBox(
                                                  height: 48,
                                                  width: 180.w,
                                                  child: DottedBorder(
                                                    radius:
                                                    Radius.circular(
                                                        10),
                                                    color: AppTheme.green,
                                                    strokeWidth: 1.5,
                                                    dashPattern: [10, 6],
                                                    child: Container(
                                                      width: 180.w,
                                                      height: 48,
                                                      padding: EdgeInsets
                                                          .symmetric(
                                                          horizontal:
                                                          30,
                                                          vertical:
                                                          13),
                                                      decoration:
                                                      BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            10),
                                                        color: AppTheme
                                                            .greenPer5,
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                        children: [
                                                          SvgPicture.asset(
                                                              'assets/svgs/upload.svg'),
                                                          Gap(6.w),
                                                          Text(
                                                            'File Upload',
                                                            style: TextStyle(
                                                                color: AppTheme
                                                                    .green,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w400,
                                                                fontSize:
                                                                15),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Gap(17),
                                          SubmitButton(
                                            onTap: () {
                                              setState(() {
                                                if (_textEditingControllerTest
                                                    .text.isNotEmpty &&
                                                    _textEditingControllerMarks1
                                                        .text
                                                        .isNotEmpty &&
                                                    _textEditingControllerMarks2
                                                        .text
                                                        .isNotEmpty) {
                                                  testName.add(
                                                      _textEditingControllerTest
                                                          .text);
                                                  gainedMark.add(double.parse(
                                                      _textEditingControllerMarks1
                                                          .text));
                                                  outOf.add(double.parse(
                                                      _textEditingControllerMarks2
                                                          .text));
                                                  addTestOn = false;
                                                }
                                                _textEditingControllerTest
                                                    .clear();
                                                _textEditingControllerMarks1
                                                    .clear();
                                                _textEditingControllerMarks2
                                                    .clear();

                                                addTestOn = false;
                                              });
                                            },
                                          )
                                        ],
                                      ),
                                    )
                                        : SizedBox.shrink(),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    addTestOn = true;
                                  });
                                },
                                child: OutlinedContainer(
                                    height: 36.h,
                                    width: 350.w,
                                    borderRadius: 500,
                                    borderWidth: 0,
                                    horizontalPadding: 134.w,
                                    verticalPadding: 6.h,
                                    backgroundColor: AppTheme.grey4per16,
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/svgs/add_circle.svg'),
                                        Text(
                                          'Add Week',
                                          style: TextStyle(
                                            color: AppTheme.grey4,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        )),
                    //Add Test Result
                    Gap(20.h),
                    OutlinedContainer(
                      width: 390.w,
                      borderRadius: 15,
                      borderWidth: 1,
                      horizontalPadding: 0,
                      verticalPadding: 10,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 11,
                            ),
                            child: Text(
                              'Classwork Report',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: AppTheme.blue,
                              ),
                            ),
                          ),
                          Divider(
                            color: AppTheme.grey2,
                            thickness: 1,
                          ),
                          Gap(12),
                          ReportTitle(
                            reportTitle: 'Quality & Presentation',
                          ),
                          Gap(12),
                          Divider(
                            color: AppTheme.grey2,
                            thickness: 1,
                          ),
                          SizedBox(
                            width: 350.w,
                            child: Column(
                              children: [
                                ClassworkReportToggle(
                                  onChangeW1: (value) {
                                    week1Value = value;
                                  },
                                  onChangeW3: (value) {
                                    week3Value = value;
                                  },
                                  onChangeW4: (value) {
                                    week4Value = value;
                                  },
                                  onChangeW5: (value) {
                                    week5Value = value;
                                  },
                                  listOfText: [
                                    'Excellent',
                                    'Good',
                                    'Moderate',
                                    'Not Good'
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Gap(14.h),
                          Divider(
                            color: AppTheme.grey2,
                            thickness: 1,
                          ),
                          Gap(12),
                          ReportTitle(
                            reportTitle: 'Work Completion',
                          ),
                          Gap(12),
                          Divider(
                            color: AppTheme.grey2,
                            thickness: 1,
                          ),
                          SizedBox(
                            width: 350.w,
                            child: Column(
                              children: [
                                ClassworkReportToggle(
                                  onChangeW1: (value) {
                                    week1Value = value;
                                  },
                                  onChangeW3: (value) {
                                    week3Value = value;
                                  },
                                  onChangeW4: (value) {
                                    week4Value = value;
                                  },
                                  onChangeW5: (value) {
                                    week5Value = value;
                                  },
                                  listOfText: [
                                    'Always',
                                    'Most of the time',
                                    'Sometimes',
                                    'Needs constant pushing'
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Gap(14.h),
                          Divider(
                            color: AppTheme.grey2,
                            thickness: 1,
                          ),
                          Gap(12),
                          ReportTitle(
                            reportTitle: 'Behavior Report',
                          ),
                          Gap(12),
                          Divider(
                            color: AppTheme.grey2,
                            thickness: 1,
                          ),
                          SizedBox(
                            width: 350.w,
                            child: Column(
                              children: [
                                BehaviorReportExtended(
                                  onChanged1: (value) {
                                    setState(() {
                                      week1ValueBehavior = value;
                                    });
                                  },
                                  onChanged2: (value) {
                                    setState(() {
                                      week2ValueBehavior = value;
                                    });
                                  },
                                  onChanged3: (value) {
                                    setState(() {
                                      week3ValueBehavior = value;
                                    });
                                  },
                                  onChanged4: (value) {
                                    setState(() {
                                      week4ValueBehavior = value;
                                    });
                                  },
                                  onChanged5: (value) {
                                    setState(() {
                                      week5ValueBehavior = value;
                                    });
                                  },
                                  behaviors: [
                                    'Participation',
                                    'Followed Instructions',
                                    'Always Punctual',
                                    'Disruption',
                                    'Off Task'
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Gap(30.h),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: SubmitButton(
                                  onTap: () {},
                                )),
                          ),
                          Gap(25.h),
                        ],
                      ),
                    ),
                    //Classwork Report
                    Gap(20),
                    OutlinedContainer(
                        width: 390.w,
                        height: 1077.h,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 11,
                              ),
                              child: Text(
                                'Merit Points',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.blue,
                                ),
                              ),
                            ),
                            Divider(
                              color: AppTheme.grey2,
                              thickness: 1,
                            ),
                            OutlinedContainer(
                                width: 350.w,
                                height: 66.h,
                                horizontalPadding: 31,
                                verticalPadding: 10,
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'This Month',
                                          style: TextStyle(
                                            color: AppTheme.textColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          '+1',
                                          style: TextStyle(
                                            color: AppTheme.green,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                    VerticalDivider(
                                      color: AppTheme.grey2,
                                      thickness: 1,
                                      indent: 10,
                                      endIndent: 10,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Total Points',
                                          style: TextStyle(
                                            color: AppTheme.textColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Text(
                                          '+17',
                                          style: TextStyle(
                                            color: AppTheme.green,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                            Gap(13.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/svgs/week_icon.svg',
                                  colorFilter: ColorFilter.mode(
                                      AppTheme.textColorPer60, BlendMode.srcIn),
                                ),
                                Gap(5.w),
                                Text(
                                  'April, 2024',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: AppTheme.textColorPer60,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 160.h,
                              width: 350.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(children: [
                                    StackedMeritPoints(meritPoints: [
                                      1,
                                      2,
                                    ]),
                                  ]),
                                  Divider(
                                    color: AppTheme.grey2,
                                    thickness: 1,
                                  ),
                                ],
                              ),
                            ),
                            Gap(16.h),
                            MeritPoints(meritInformation: {
                              'points': 2,
                              'category': 'Hard Work',
                              'teacher': 'M Bari',
                              'subject': 'Maths',
                              'date': '3 Apr, 2024'
                            }),
                            Gap(14.h),
                            MeritPoints(meritInformation: {
                              'points': 1,
                              'category': 'Success',
                              'teacher': 'M Nayeem',
                              'subject': 'Science',
                              'date': '3 Apr, 2024'
                            }),
                            Gap(14.h),
                            MeritPoints(meritInformation: {
                              'points': -2,
                              'category': 'Uniform Issue',
                              'teacher': 'M Nayeem',
                              'subject': '',
                              'date': '3 Apr, 2024'
                            }),
                            Gap(14.h),
                            MeritPoints(meritInformation: {
                              'points': -2,
                              'category': 'Uniform Issue',
                              'teacher': 'M Nayeem',
                              'subject': '',
                              'date': '3 Apr, 2024'
                            }),
                            Gap(14.h),
                            MeritPoints(meritInformation: {
                              'points': -2,
                              'category': 'Uniform Issue',
                              'teacher': 'M Nayeem',
                              'subject': '',
                              'date': '3 Apr, 2024'
                            }),
                            Gap(24),
                            Row(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                        height: 34,
                                        width: 34,
                                        child: SwitchCustom()),
                                    Gap(9.w),
                                    Text(
                                      'Merit',
                                      style: TextStyle(
                                        color: AppTheme.textColor,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13,
                                      ),
                                    ),
                                    Gap(13.w),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Points',
                                          style: TextStyle(
                                            color: AppTheme.textColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Gap(6.w),
                                        SizedBox(
                                          width: 49.w,
                                          height: 48.h,
                                          child: TextField(
                                            keyboardType:
                                            TextInputType.numberWithOptions(
                                                decimal: true),
                                            style: TextStyle(
                                              color: AppTheme.textColor,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                            ),
                                            decoration: InputDecoration(
                                              hintText: 'Enter',
                                              hintStyle: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                fontSize: 13,
                                                fontStyle: FontStyle.italic,
                                                color: AppTheme.textColor,
                                              ),
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      10.r),
                                                  borderSide: BorderSide(
                                                      width: 0.5,
                                                      color: AppTheme.grey3)),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                BorderRadius.circular(10.r),
                                                borderSide: BorderSide(
                                                  color: AppTheme.textColor,
                                                  width: 1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Gap(11.w),
                                    Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Reason for Points',
                                          style: TextStyle(
                                            color: AppTheme.textColor,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                          ),
                                        ),
                                        Gap(6.w),
                                        SizedBox(
                                          width: 194.w,
                                          height: 48.h,
                                          child: TextField(
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                              color: AppTheme.textColor,
                                            ),
                                            // focusNode:
                                            // _focusNode,
                                            decoration: InputDecoration(
                                                hintText: 'Type here',
                                                hintStyle: TextStyle(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 13,
                                                  fontStyle: FontStyle.italic,
                                                  color: AppTheme.textColor,
                                                ),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10.r),
                                                    borderSide: BorderSide(
                                                        width: 0.5,
                                                        color: AppTheme.grey3)),
                                                focusedBorder:
                                                OutlineInputBorder(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(10),
                                                    borderSide: BorderSide(
                                                      color: AppTheme
                                                          .textColor,
                                                      width: 1,
                                                    ))),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Gap(14.h),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SubmitButton(
                                  onTap: () {},
                                )),
                            Gap(24),
                          ],
                        )),
                    Gap(20),

                    OutlinedContainer(
                        width: 390.w,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 11,
                              ),
                              child: Text(
                                'Areas of Improvement',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: AppTheme.blue,
                                ),
                              ),
                            ),
                            Divider(
                              color: AppTheme.grey2,
                              thickness: 1,
                            ),
                            AreasToImprove(onChanged: (value) {
                              areasToImprove=value;
                              debugPrint(areasToImprove.toString());
                            },
                                areasToImprove: [
                                  'Concentration',
                                  'Time Management ',
                                  'Neat Hand Writing',
                                  'Co-operative With The Tutor',
                                  'Disruptive',
                                  'Bringing Resources Book And Exercise Book',
                                  'Bringing Stationaries (e.g. Pen, Pencil, Rubber, Sharper, Calculator',
                                  'Punctual',
                                  'Reading Book (For Up To Year 8)',
                                ])

                            ,Gap(10.h),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SubmitButton(
                                  onTap: () {},
                                )),
                            Gap(10.h),
                          ],
                        )), //Areas to improve
                    Gap(20),
                    OutlinedContainer(
                        height: 380.h,
                        width: 390.w,
                        child: Column(
                          children: [
                            Text(
                              'Teachers Evaluation About Progress',
                              style: TextStyle(
                                  color: AppTheme.blue,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Divider(
                              color: AppTheme.grey2,
                              thickness: 1,
                            ),
                            Gap(15),
                            SizedBox(
                              width: 350.w,
                              height: 199.h,
                              child: TextField(
                                maxLines: 10,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                  color: AppTheme.textColor,
                                ),
                                // focusNode:
                                // _focusNode,
                                controller: _textEditingControllerEvolution,
                                decoration: InputDecoration(
                                    hintText: 'Type here',
                                    hintStyle: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 13,
                                      fontStyle: FontStyle.italic,
                                      color: AppTheme.textColor,
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius:
                                        BorderRadius.circular(10.r),
                                        borderSide: BorderSide(
                                            width: 0.5, color: AppTheme.grey3)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: AppTheme.textColor,
                                          width: 1,
                                        ))),
                              ),
                            ),
                            Gap(15),
                            Row(
                              children: [
                                Image.asset('assets/images/teacher_image.png'),
                                Gap(7.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mohammed Bari',
                                      style: TextStyle(
                                        color: AppTheme.textColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Class Teacher | YG 10',
                                      style: TextStyle(
                                        color: AppTheme.textColorPer60,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Gap(14.h),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: SubmitButton(
                                  onTap: () {},
                                )),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
