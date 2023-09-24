import 'package:flutter/material.dart';
import 'package:stylish/widgets/custom_elevated_button.dart';
import 'package:stylish/widgets/custom_page_indicator.dart';
import 'package:stylish/widgets/custom_text_button.dart';
import 'package:stylish/widgets/on_boarding_content.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

late PageController _pageController;
int _currentPage = 0;

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Visibility(
                visible: _currentPage < 2,
                replacement: CustomTextButton(
                  title: 'START',
                  onPress: () {
                    Navigator.pushReplacementNamed(context, '/login_screen');
                  },
                ),
                child: CustomTextButton(
                  title: 'SKIP',
                  onPress: () {
                    _pageController.animateToPage(2,
                        duration: const Duration(seconds: 1),
                        curve: Curves.decelerate);
                  },
                ),
              ),
            ),
            Expanded(
              child: PageView(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (int currentPage) {
                  setState(
                    () {
                      _currentPage = currentPage;
                    },
                  );
                },
                controller: _pageController,
                children: const [
                  OnBoardingContent(
                    imageName: 'on_boarding_1',
                    title: 'Choose Product',
                    subTitle:
                        'A product is the item offered for sale.A product can be a service or an item. It can be physical or in virtual or cyber form',
                  ),
                  OnBoardingContent(
                    imageName: 'on_boarding_2',
                    title: 'Make Payment',
                    subTitle:
                        'Payment is the transfer of money services in exchange product or Payments typically made terms agreed ',
                  ),
                  OnBoardingContent(
                    imageName: 'on_boarding_3',
                    title: 'Get Your Order',
                    subTitle:
                        'Business or commerce an order is a stated intention either spoken to engage in a commercial transaction specific products  ',
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomPageIndicator(
                  marginEnd: 8,
                  isCurrentIndex: _currentPage == 0,
                ),
                CustomPageIndicator(
                  marginEnd: 8,
                  isCurrentIndex: _currentPage == 1,
                ),
                CustomPageIndicator(
                  isCurrentIndex: _currentPage == 2,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Visibility(
              visible: _currentPage == 2,
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              child: CustomElevatedButton(
                title: 'Getting Started',
                backGroundIcon: const Color(0xff2918F8),
                buttonColor: const Color(0xff4030FF),
                buttonWidth: 300,
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login_screen');
                },
              ),
            ),
            const SizedBox(
              height: 12,
            )
          ],
        ),
      ),
    );
  }
}
