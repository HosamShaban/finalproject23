import 'package:finalproject23/auth/signin_screen.dart';
import 'package:flutter/material.dart';
import '../Consts/Defaultimages.dart';
import '../Consts/colors.dart';
import '../widget/custom_text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  "إنشاء حساب",
                  style: TextStyle(fontSize: 24.0),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "أنشأ حسابك الجديد الآن",
                  style: TextStyle(fontSize: 20.0),
                ),
                const SizedBox(
                  height: 15,
                ),
                Image.asset(
                  alignment: Alignment.center,
                  fit: BoxFit.fill,
                  'images/signup.jpg',
                  width: 220,
                  height: 220,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: "email@gmail.com",
              inputType: TextInputType.emailAddress,
              image: DefaultImages.email,
              obscureText: false,
              labelText: "البريد الإلكتروني",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MaterialButton(
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: ConstColors.primaryColor,
                    child: Row(
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            "استمر باستخدام البريد الالكتروني",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () => {
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) => Success()))
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "هل بالفعل لديك حساب ؟",
                style: TextStyle(
                  color: ConstColors.text2Color,
                ),
              ),
              InkWell(
                onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                },
                child: const Text(
                  " تسجيل الدخول",
                  style: TextStyle(color: ConstColors.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
