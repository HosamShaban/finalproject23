import 'package:finalproject23/Consts/colors.dart';
import 'package:flutter/material.dart';

class DateCard extends StatelessWidget {
  final String title;
  final String image;
  final String booking;

  const DateCard({Key? key, required this.title, required this.image , required this.booking})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 7),
                Row(
                  children: [
                    const SizedBox(width: 10),

                    const SizedBox(width: 10),
                     Text(
                      booking,
                      style:const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff909090),
                      ),
                    ),
                    const Text(
                      ' : مكان الحجز',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 130),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: ConstColors.textColor,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: AssetImage("assets/images/Vector.png"),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        SizedBox(width: 190),
                        Text(
                          'دكتور متخخص في مرض السكري',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff909090),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        //  Navigator.push(context, MaterialPageRoute(builder: (context) => const ()));
                      },
                      child: const Text(
                        "مفتوح الآن",
                        style: TextStyle(color: ConstColors.primaryColor),
                      ),
                    ),
                    const SizedBox(width: 50),
                    const Text(
                      '8:15 PM',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff909090),
                      ),
                    ),
                    const Text(
                      ' : الوقت ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),

                    const SizedBox(width: 20),

                    const Text(
                      '23/1/1998',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff909090),
                      ),
                    ),
                    const Text(
                      ' : تاريخ الحجز',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

