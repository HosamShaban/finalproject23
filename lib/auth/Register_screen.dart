import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:finalproject23/Consts/colors.dart';
import 'package:finalproject23/auth/signin_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(top: 50.0, bottom: 40.0),
            child: Column(
              children: const <Widget>[
                Text(
                  "إنشاء حساب",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "أكمل إنشاء حسابك",
                  style:
                      TextStyle(fontSize: 24.0, fontWeight: FontWeight.normal),
                ),
                Text(
                  "أنشأ حسابك الجديد",
                  style: TextStyle(fontSize: 16, color: Color(0xff414141)),
                ),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
            SizedBox(width: 30),
            Text(
              'الاسم كامل',
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
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: 'الاسم كامل',
                  hintStyle: const TextStyle(
                      fontFamily: 'SST',
                      color: Color(0xff888888),
                      fontSize: 13),
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: const Icon(Icons.person_outline),
                  suffixIconColor: const Color(0xfff888888)),
            ),
          ),
          const SizedBox(height: 15),
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
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.grey),
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
              textAlign: TextAlign.right,
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: Colors.grey),
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
          Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
            SizedBox(width: 30),
            Text(
              'تأكيد كلمة السر  ',
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
              textAlign: TextAlign.right,
              obscureText: true,
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 2, color: Colors.grey), //<-- SEE HERE
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
          Container(
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
                            "إنشاء حساب",
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
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: const Text(
                  " تسجيل الدخول",
                  style: TextStyle(color: ConstColors.primaryColor),
                ),
              ),
              const SizedBox(width: 3),
              const Text(
                "هل بالفعل لديك حساب؟",
                style: TextStyle(
                  color: ConstColors.text2Color,
                ),
              ),

            ],
          )
        ],
      ),
    );
  }
}
