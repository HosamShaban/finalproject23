import 'package:finalproject23/View/date_screen.dart';
import 'package:finalproject23/widget/NavBar.dart';
import 'package:flutter/material.dart';

class PreviousDate extends StatelessWidget {
  const PreviousDate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: NavBar(),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text(
          'مواعيدي',
          style: TextStyle(
              fontSize: 20, color: Colors.black,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: const Color(0xFFF3F4F9),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PreviousDate(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.grey; // The button is pressed
                        } else if (states.contains(MaterialState.hovered)) {
                          return Colors.blueGrey; // The button is hovered
                        }
                        return Colors.white; // The default button color
                      },
                    ),
                  ),
                  child: const Text(
                    'السابقة',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                color: const Color(0xFFF3F4F9),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DateScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.grey; // The button is pressed
                        } else if (states.contains(MaterialState.hovered)) {
                          return Colors.blueGrey; // The button is hovered
                        }
                        return Colors.white; // The default button color
                      },
                    ),
                  ),
                  child: const Text(
                    'التالية',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 55,
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: const Color(0xffEAEAEA),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "15/3/2022",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        "الجمعة",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),



    );
  }
}
