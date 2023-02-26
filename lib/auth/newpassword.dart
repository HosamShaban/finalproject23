import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:finalproject23/Consts/colors.dart';
import 'package:finalproject23/auth/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var alertStyle = AlertStyle(
      alertPadding: const EdgeInsets.all(15),
      animationType: AnimationType.grow,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      descStyle: const TextStyle(
          fontWeight: FontWeight.w400, fontSize: 16, color: Color(0xffA0A0A0)),
      descTextAlign: TextAlign.start,
      animationDuration: const Duration(milliseconds: 400),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(
          color: Colors.grey,
        ),
      ),
      titleStyle: const TextStyle(
          fontWeight: FontWeight.w700, fontSize: 24, color: Color(0xff121111)),
      alertAlignment: Alignment.center,
    );
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            child: Column(
              children: [
                const Text(
                  'انشاء كلمة سر جديدة ',
                  style: TextStyle(
                      fontFamily: 'SST',
                      fontSize: 22,
                      color: Color(0xff121111),
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'أدخل كلمة السر الجديدة',
                  style: TextStyle(
                      fontFamily: 'SST',
                      fontSize: 16,
                      color: Color(0xff414141),
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 25,
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
                Row(mainAxisAlignment: MainAxisAlignment.end, children: const[
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
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            padding: const EdgeInsets.all(15),
            child: AnimatedButton(
              text: 'انشاء حساب',
              pressEvent: () {
                Alert(
                  context: context,
                  style: alertStyle,
                  type: AlertType.success,
                  title: "تم تسجيل دخولك بنجاح ",
                  desc: "أدخل كلمة السر الجديدة",
                  buttons: [
                    DialogButton(
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen())),
                      color: ConstColors.primaryColor,
                      child: const Text(
                        "استمرار",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ).show();
              },
            ),
          ),
        ]),
      ),
    );
  }
}
