import 'package:flutter/material.dart';

class SugarMeasurement extends StatelessWidget {
  const SugarMeasurement({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.only(right: 10),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title: const Text(
          "قياس السكر",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              width: 327,
              height: 185,
              decoration: BoxDecoration(
                  color: const Color(0xffEAEAEA),
                  borderRadius: BorderRadius.circular(12.0)),
              child: Column(
                children: [
                  const Text("املأ البيانات بشكل صحيح"),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(20.0)),
                        width: 172,
                        height: 32,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            suffix: Text(
                              "mg / di ",
                              style: TextStyle(color: Colors.black),
                            ),
                            hintTextDirection: TextDirection.rtl,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text("صائم"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(20.0)),
                        width: 172,
                        height: 32,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            suffix: Text(
                              "mg / di ",
                              style: TextStyle(color: Colors.black),
                            ),
                            hintTextDirection: TextDirection.rtl,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      const Text("فاطر"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xffD9D9D9),
                            borderRadius: BorderRadius.circular(20.0)),
                        width: 172,
                        height: 32,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            suffix: Text(
                              "mg / di ",
                              style: TextStyle(color: Colors.black),
                            ),
                            hintTextDirection: TextDirection.rtl,
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      const SizedBox(width: 3),
                      const Text("عشوائي"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 327,
              height: 48,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff407BFF)),
                  onPressed: () {},
                  child: const Text(
                    "تسجيل",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
