import 'package:finalproject23/View/Biography.dart';
import 'package:finalproject23/View/profile_screen.dart';
import 'package:flutter/material.dart';

class Biography2 extends StatelessWidget {
  const Biography2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(right: 5),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title:const Text(
          "السيرة المرضية",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Container(
                child: Container(
              height: 55,
              margin: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: const Color(0xffEAEAEA),
                  borderRadius: BorderRadius.circular(12.0)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const[
                  Text(
                    "15/3/2022",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "الجمعة",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ));
          }),
    );
  }
}
