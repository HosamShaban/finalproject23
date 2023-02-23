import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final myController = PageController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 80),
            child: PageView(
              controller: myController,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 100),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/images/photo1.jpeg'),
                      const Text(
                        'النص العربي',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 100),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/images/photo4.jpeg'),
                      const Text(
                        'النص العربي',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 100),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset('assets/images/photo3.jpeg'),
                      const Text(
                        'النص العربي',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                      const Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 550),
            child: Center(
              child: SmoothPageIndicator(
                controller: myController,
                count: 3,
                effect: const SlideEffect(
                    spacing: 8,
                    radius: 4,
                    dotWidth: 24,
                    dotColor: Color(0xfffd9d9d9),
                    dotHeight: 7,
                    activeDotColor: Color(0xff407BFF)),
                onDotClicked: (index) => myController.animateToPage(index,
                    duration: const Duration(microseconds: 500),
                    curve: Curves.easeInOut),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 60, left: 311),
            child: TextButton(
                onPressed: () => myController.jumpToPage(2),
                child: const Text(
                  'تخطي',
                  style: TextStyle(
                      color: Color(0xff888888),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: InkWell(
          onTap: () => myController.nextPage(
              duration: const Duration(microseconds: 500),
              curve: Curves.easeInOut),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff407BFF),
            ),
            margin: const EdgeInsets.all(20),
            height: 48,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () => myController.nextPage(
                        duration: const Duration(microseconds: 500),
                        curve: Curves.easeInOut),
                    child: const Text(
                      'التالي',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
