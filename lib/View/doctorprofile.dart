import 'package:finalproject23/View/booking.dart';
import 'package:flutter/material.dart';

class doctorProfile extends StatelessWidget {
  const doctorProfile({Key? key}) : super(key: key);

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
        title: const Text(
          "ملف الطبيب",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            const Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/images/photo3.jpeg'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "محمد عاهد الشوا",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                 Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                 Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                 Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                 Icon(Icons.star_border),
                 Icon(Icons.star_border),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 260),
              child: const Text(
                "تفاصيل العيادة",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: 327,
              height: 147,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffD9D9D9),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5.5),
                        width: 91,
                        height: 22,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: const Center(
                          child: Text(
                            "مفتوح الأن",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 130),
                        child: const Text(
                          "ساعات العمل",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 96),
                    child: const Text(
                      " من الساعة الثامنة صباحا حتى الساعة الثانية ظهرا",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.only(left: 190),
                    child: const Text(
                      "البريد الإلكتروني",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 190),
                    child: const Text(
                      "example@gmail.com",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.only(left: 190),
                    child: const Text(
                      "رقم الجوال",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 190),
                    child: const Text(
                      "05999999999",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(left: 260),
              child: const Text(
                "المؤهلات",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: 327,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xffD9D9D9),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 311,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff407BFF)),
                    onPressed: () {},
                    child: const Text(
                      "تحدث مع الطبيب",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 311,
                height: 48,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff407BFF)),
                    onPressed: () {
                     Navigator.push(context,MaterialPageRoute(builder: (context) => const AppointmentBooking()));
                    },
                    child: const Text(
                      "حجز موعد",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
