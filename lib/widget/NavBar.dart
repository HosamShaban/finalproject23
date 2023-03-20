import 'package:finalproject23/View/date_screen.dart';
import 'package:finalproject23/View/doctor_screen.dart';
import 'package:finalproject23/View/home_screen.dart';
import 'package:finalproject23/View/measure_screen.dart';
import 'package:finalproject23/View/profile_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.65,//20.0,
      child: Drawer(
      child: ListView(
        padding: const EdgeInsets.only(top: 50),
        children: [
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
               const Padding(
                 padding: EdgeInsets.all(10.0),
                 child: Text('الصفحة الرئيسية', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w700)),
               ),
                Image.asset('assets/images/home_list.png'),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  DoctorScreen()),
              );
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('الاطباء', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w700)),
                ),
                Image.asset('assets/images/doctor_list.png'),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DateScreen()),
              );
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('مواعيدي', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w700)),
                ),
                Image.asset('assets/images/date_list.png'),
              ],
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MeasureScreen()),
              );
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('قياس السكر', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w700)),
                ),
                Image.asset('assets/images/measure_list.png'),
              ],
            ),
          ),
      ListTile(
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfileScreen()),
          );
        },
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('صفحتي', style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w700)),
            ),
            Image.asset('assets/images/profile.png' , color: Colors.black),
          ],
        ),
      ),
        ],
      ),
        ),
    );
  }
}