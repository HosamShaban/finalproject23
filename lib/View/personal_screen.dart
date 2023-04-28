import 'package:finalproject23/Consts/Defaultimages.dart';
import 'package:finalproject23/Consts/colors.dart';
import 'package:finalproject23/View/date_screen.dart';
import 'package:finalproject23/View/doctor_screen.dart';
import 'package:finalproject23/View/home_screen.dart';
import 'package:finalproject23/View/measure_screen.dart';
import 'package:finalproject23/View/profile_screen.dart';
import 'package:finalproject23/controller/screenIndexProvider.dart';
import 'package:finalproject23/widget/tab_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PersonalPage extends StatefulWidget {
  @override
  State<PersonalPage> createState() => _PersonalPageState();

}

class _PersonalPageState extends State<PersonalPage> {
  late final ScaffoldState scaffoldState;


  @override
  void initState() {
    context.read<screenIndexProvider>().tabFlag = 0;
    super.initState();
  }

  List<dynamic> screens = [
    const HomeScreen(),
    const DateScreen(),
    const DoctorScreen(),
    const ProfileScreen(),
    const SugarMeasurement()
  ];

  @override
  Widget build(BuildContext context) {
    final _screenindexprovider = Provider.of<screenIndexProvider>(context);
    int currentScreenIndex = _screenindexprovider.tabFlag;
    return Scaffold(
      body: screens[currentScreenIndex],
      bottomNavigationBar:
      Container(
        height: 60,
        width: 300,
        decoration: BoxDecoration(
          color: ConstColors.primaryColor,
          boxShadow: [
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.04),
              offset: const Offset(0, -2),
            ),
            BoxShadow(
              color: const Color(0xff000000).withOpacity(0.10),
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TabCard(
              color: currentScreenIndex == 4
                  ? ConstColors.whiteFontColor
                  : const Color(0xffbdb7b7),
              image: DefaultImages.measure,
              title: "قياس السكر",
              onTap: () {
                setState(() {
                  _screenindexprovider.tabFlag = 4;
                });
              },

            ),
            TabCard(
              color: currentScreenIndex == 1
                  ? ConstColors.whiteFontColor
                  : const Color(0xffbdb7b7),
              image: DefaultImages.date,
              title: "مواعيدي",
              onTap: () {
                setState(() {
                  _screenindexprovider.tabFlag = 1;
                });
              },

            ),

            TabCard(
              color: currentScreenIndex == 0
                  ? ConstColors.whiteFontColor
                  : const Color(0xffbdb7b7),
              image: DefaultImages.home,
              title: "الرئيسية",
              onTap: () {
                setState(() {
                  _screenindexprovider.tabFlag = 0;
                });
              },
            ),

            TabCard(
              color: currentScreenIndex == 2
                  ? ConstColors.whiteFontColor
                  : const Color(0xffbdb7b7),
              image: DefaultImages.doctors,
              title: "الأطباء",
              onTap: () {
                setState(() {
                  _screenindexprovider.tabFlag = 2;
                });
              },

            ),
            TabCard(
              color: currentScreenIndex == 3
                  ? ConstColors.whiteFontColor
                  : const Color(0xffbdb7b7),
              image: DefaultImages.profile,
              title: "صفحتي",
              onTap: () {
                setState(() {
                  _screenindexprovider.tabFlag = 3;
                });
              },

            ),
          ],
        ),
      ),
    );
  }
}

