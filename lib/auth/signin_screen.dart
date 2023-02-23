import 'package:finalproject23/auth/singup_screen.dart';
import 'package:flutter/material.dart';
import '../Consts/Defaultimages.dart';
import '../Consts/colors.dart';
import '../widget/custom_text_field.dart';

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
                  'images/signin.jpg',
                  width: 200,
                  height: 200,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child:CustomTextField(
              controller: TextEditingController(),
              hintText: "email@gmail.com",
              inputType: TextInputType.visiblePassword,
              image: DefaultImages.email,
              obscureText: true,
              labelText: "البريد الإلكتروني",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 18, right: 18),
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: "********",
              inputType: TextInputType.visiblePassword,
              image: DefaultImages.lock,
              obscureText: true,
              labelText: "كلمة السر",
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
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
