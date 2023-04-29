import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:finalproject23/auth/signin_screen.dart';

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
                      Image.asset('assets/images/photo1.jpg'),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Text(
                          'النص العربي',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Text(
                          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
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
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Text(
                          'النص العربي',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Text(
                          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
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
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Text(
                          'النص العربي',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Text(
                          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
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
            padding: const EdgeInsets.only(top: 60, left: 300),
            child: TextButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen())),
                child: const Text(
                  'تخطي',
                  style: TextStyle(
                      color: Color(0xff888888),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
          )
        ],
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: InkWell(
          onTap: () => myController.nextPage(
              duration: const Duration(microseconds: 300),
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
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen())),
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
