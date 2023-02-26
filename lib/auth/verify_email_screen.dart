import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:finalproject23/Consts/colors.dart';
import 'package:finalproject23/auth/newpassword.dart';


class VerifyMobileScreen extends StatefulWidget {
  const VerifyMobileScreen({Key? key}) : super(key: key);

  @override
  State<VerifyMobileScreen> createState() => _VerifyMobileScreenState();
}

class _VerifyMobileScreenState extends State<VerifyMobileScreen> {
  final defaultPinTheme = const PinTheme(
      width: 50,
      height: 50,
      textStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.only(right: 10));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(
          children: [
            Container(
              width: 119,
              height: 150,
              decoration: const BoxDecoration(
              ),
            ),

            Container(
              child: Column(
                children: [
                  const Text(
                    'أدخل رمز التحقق',
                    style: TextStyle(
                        fontFamily: 'SST',
                        fontSize: 24,
                        color: Color(0xff121111),
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    'تم ارسال رسالة مكونة من 4 أرقام على \n email@gmail.com  بريدك الإالكتروني',
                    style: TextStyle(
                        fontFamily: 'SST',
                        fontSize: 16,
                        color: Color(0xffA0A0A0),
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
    const SizedBox(height: 34),
    Pinput(
    defaultPinTheme: defaultPinTheme,
    pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
    showCursor: true,
    onCompleted: (pin) => {},
    ),
    const SizedBox(height: 34),
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const CreateNewPassword()));
                        },
                        child: const Text(
                          'استمرار',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                    ),
                  ],
                ),
                ),
              ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "لم يصلك الرمز ؟ ",
                        style: TextStyle(
                          fontSize: 16,
                          color: ConstColors.text2Color,
                        ),
                      ),
                      Text(
                        "اعد ارسال الرمز",
                        style: TextStyle(
                          fontSize: 16,
                          color: ConstColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
            ],
            ),
    ),
          ],
      ),
    );
  }
}
