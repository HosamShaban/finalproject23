import 'package:finalproject23/View/Biography2.dart';
import 'package:finalproject23/View/profile_screen.dart';
import 'package:flutter/material.dart';

class Biography extends StatelessWidget {
  const Biography({Key? key}) : super(key: key);

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
      body:  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "التشخيص",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffEAEAEA),
                        borderRadius: BorderRadius.circular(12.0)),
                    width: 311,
                    height: 136,
                    child: TextFormField(
                      maxLines: 10,
                      decoration:const InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const  Text(
                    "العلاج",
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color(0xffEAEAEA),
                        borderRadius: BorderRadius.circular(12.0)),
                    width: 311,
                    height: 136,
                    child: TextFormField(
                      maxLines: 10,
                      decoration:const  InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
