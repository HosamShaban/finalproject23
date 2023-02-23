import 'package:flutter/material.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: 119,
            height: 111,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('images/Delmi 2.png'))),
          ),
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
                    'كلمة المرور  ',
                    style:  TextStyle(
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
                      hintStyle: const TextStyle(
                          fontFamily: 'SST',
                          color: Color(0xffE2E2E2),
                          fontSize: 13),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end, children: const[
                   SizedBox(width: 30),
                   Text(
                    'تأكيد كلمة المرور  ',
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
                      hintStyle: const TextStyle(
                          fontFamily: 'SST',
                          color: Color(0xffE2E2E2),
                          fontSize: 13),
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
                      onPressed: () {},
                      child: const Text(
                        'انشاء حساب',
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
      ),
    );
  }
}
