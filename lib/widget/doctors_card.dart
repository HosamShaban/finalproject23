import 'package:finalproject23/Consts/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DoctorsCard extends StatelessWidget {
  final String title;
  final String image;
  const DoctorsCard({Key? key, required this.title, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
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
                    const Icon(
                      Icons.favorite_border,
                      color: Colors.black,
                      size: 30,
                    ),
                    const SizedBox(width: 10),
                    RatingBar.builder(
                      initialRating: 4.0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 18.0,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 18,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    const SizedBox(width: 90),
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
                         SizedBox(width: 170),
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
                    const SizedBox(width: 30),
                    const Text(
                      "11",
                      style: TextStyle(
                        fontSize: 10,
                        color: ConstColors.text2Color,
                      ),
                    ),
                    const Icon(Icons.remove_red_eye_outlined,
                        color: Color(0xff909090)),
                    const SizedBox(width: 10),
                    const Text(
                      "122",
                      style: TextStyle(
                        fontSize: 10,
                        color: ConstColors.text2Color,
                      ),
                    ),
                    const Icon(Icons.favorite_border, color: Color(0xff909090)),
                    const SizedBox(width: 7),
                    const Text(
                      "0599999999",
                      style: TextStyle(
                        fontSize: 10,
                        color: ConstColors.text2Color,
                      ),
                    ),
                    const SizedBox(width: 2),
                    const Icon(
                      Icons.phone,
                      color: Color(0xff909090),
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "غزة",
                      style: TextStyle(
                        fontSize: 10,
                        color: ConstColors.text2Color,
                      ),
                    ),
                    const Icon(
                      Icons.home,
                      color: Color(0xff909090),
                      size: 25,
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

