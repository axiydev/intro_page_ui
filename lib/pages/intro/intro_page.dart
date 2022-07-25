import 'package:flutter/material.dart';
import 'package:ui_example/consts/consts.dart';
import 'package:ui_example/pages/intro/widgets/indicator_widget.dart';
import 'package:ui_example/pages/intro/widgets/page_widget.dart';

class IntroPage extends StatefulWidget {
  static const routeName = '/intro_page';
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController? _pageController;
  int? _currentIndex = 0;
  Size? _size;
  @override
  void didChangeDependencies() {
    _pageController = PageController();
    _size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          fit: StackFit.loose,
          children: [
            ///pages
            PageView(
              onPageChanged: (index) {
                _currentIndex = index;
                setState(() {});
              },
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              children: [
                ///first page

                PageWidget(
                    size: _size,
                    image: MyImages.first,
                    title: 'Learn from experts',
                    subtitle:
                        ' Lorem ipsum is a placeholder text commonly used to '),

                ///second page
                PageWidget(
                    size: _size,
                    image: MyImages.second,
                    title: 'Learn from experts',
                    subtitle:
                        ' Lorem ipsum is a placeholder text commonly used to '),

                ///third page
                PageWidget(
                    size: _size,
                    image: MyImages.third,
                    title: ' Learn from experts',
                    subtitle:
                        ' Lorem ipsum is a placeholder text commonly used to ')
              ],
            ),

            ///custom indicator
            Positioned(
                bottom: 30,
                left: _size!.width / 2 - 30,
                child: SizedBox(
                  width: 60,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomIndicatorWidget(isSelected: _currentIndex == 0),
                      const SizedBox(
                        width: 3,
                      ),
                      CustomIndicatorWidget(isSelected: _currentIndex == 1),
                      const SizedBox(
                        width: 3,
                      ),
                      CustomIndicatorWidget(isSelected: _currentIndex == 2),
                    ],
                  ),
                )),

            ///Skip button
            _currentIndex == 0
                ? Positioned(
                    right: 10,
                    top: 35,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style:
                            TextStyle(color: Color(0xFF4CAF50), fontSize: 18),
                      ),
                    ))
                : const SizedBox.shrink(),
          ],
        ));
  }
}
