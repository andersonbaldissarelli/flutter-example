import 'package:agi_list/core/const/app_colors.dart';
import 'package:agi_list/features/step/widget/step1_widget.dart';
import 'package:agi_list/features/step/widget/step2_widget.dart';
import 'package:agi_list/features/step/widget/step3_widget.dart';
import 'package:agi_list/features/utils/indicatior.dart';
import 'package:flutter/material.dart';

class StepPage extends StatefulWidget {
  @override
  _StepPageState createState() => _StepPageState();
}

class _StepPageState extends State<StepPage> {

  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  final _kArrowColor = Colors.black.withOpacity(0.8);


  final List<Widget> _pages = <Widget>[
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: Step1Page(),
    ),
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: Step2Page(),
    ),
    ConstrainedBox(
      constraints: const BoxConstraints.expand(),
      child: Step3Page(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
    body: IconTheme(
        data: IconThemeData(color: _kArrowColor),
        child: Stack(
          children: <Widget>[
             PageView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index % _pages.length];
              },
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                color: Colors.transparent,
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: DotsIndicator(
                    color: AppColors.black ,
                    controller: _controller,
                    itemCount: _pages.length,
                    onPageSelected: (int page) {
                      _controller.animateToPage(
                        page,
                        duration: _kDuration,
                        curve: _kCurve,
                      
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
     );
  }
}


/*
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
     return PageView(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Step1Page(),
        Step2Page(),
        Step3Page(),
      ],
     );
  }
*/