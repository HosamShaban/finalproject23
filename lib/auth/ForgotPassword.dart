import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:finalproject23/auth/signin_screen.dart';
import 'package:finalproject23/auth/newpassword.dart';
import 'package:finalproject23/auth/verify_email_screen.dart';

class ForgotPassword extends StatelessWidget {
  static String id = '/ForgotPassword';
  late String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          width: 130,
          height: 150,
          decoration: const BoxDecoration(),
        ),
        Container(
          child: Column(
            children: [
              const Text(
                'نسيت كلمة السر',
                style: TextStyle(
                    fontFamily: 'SST',
                    fontSize: 30,
                    color: Color(0xff121111),
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const Text(
                'استرجع كلمة سر حسابك',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff414141),
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
                SizedBox(width: 35),
                Text(
                  'البريد الإلكتروني',
                  style: TextStyle(
                      fontFamily: 'Tajawal', color: Colors.black, fontSize: 16),
                ),
              ]),
              Container(
                width: double.infinity,
                height: 80,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                  Radius.circular(8),
                )),
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          width: 2, color: Colors.grey), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(8),
                    ),
                    hintText: 'email@gmail.com',
                    hintStyle: const TextStyle(
                        fontFamily: 'Tajawal',
                        color: Color(0xff888888),
                        fontSize: 16),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {},
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyMobileScreen()));
                    },
                    child: const Text(
                      'استمرار',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
