import 'package:finalproject23/View/personal_screen.dart';
import 'package:finalproject23/auth/singup_screen.dart';
import 'package:flutter/material.dart';
import '../Consts/Defaultimages.dart';
import '../Consts/colors.dart';
import 'package:finalproject23/auth/ForgotPassword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 50.0, bottom: 40.0),
            child: Column(
              children: <Widget>[
                const Text(
                  "تسجيل الدخول",
                  style: TextStyle(fontSize: 24.0),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                  'assets/images/signin.jpg',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
            SizedBox(width: 30),
            Text(
            'البريد الإلكتروني',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'SST', fontSize: 16),
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
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'email@gmail.com',
                  hintStyle: const TextStyle(
                      fontFamily: 'SST',
                      color: Color(0xff888888),
                      fontSize: 13),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: const Icon(Icons.email_outlined),
                  suffixIconColor: const Color(0xfff888888)),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
            SizedBox(width: 30),
            Text(
              'كلمة السر  ',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'SST', fontSize: 16),
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
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: '********',
                  hintStyle: const TextStyle(
                      fontFamily: 'SST',
                      color: Color(0xff888888),
                      fontSize: 13),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: const Icon(Icons.lock_outline),
                  suffixIconColor: const Color(0xfff888888)),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));
            },
            child: const Padding(
              padding: EdgeInsets.only(bottom: 5, left: 18, right: 18 , top: 1),
              child: Text(
                "هل نسيت كلمة السر؟",
                style: TextStyle(
                  fontSize: 14,
                  color: ConstColors.text2Color
                ),
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 15.0),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    color: ConstColors.primaryColor,
                    child: Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 100),
                          child: Text(
                            "تسجيل الدخول",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalPage()))
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ليس لديك حساب ؟",
                style: TextStyle(
                  color: ConstColors.text2Color,
                ),
              ),
              InkWell(
                onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
                },
                child: const Text(
                  " انشاء حساب",
                  style: TextStyle(color: ConstColors.primaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
