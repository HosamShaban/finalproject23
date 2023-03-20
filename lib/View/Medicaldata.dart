import 'package:finalproject23/Consts/colors.dart';
import 'package:finalproject23/View/Biography.dart';
import 'package:finalproject23/View/Biography2.dart';
import 'package:flutter/material.dart';

class Medicaldata extends StatefulWidget {
  const Medicaldata({Key? key}) : super(key: key);

  @override
  State<Medicaldata> createState() => _MedicaldataState();
}

class _MedicaldataState extends State<Medicaldata> {
  String Diabetictype = "one";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.only(right: 5),
              child: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title:const Text(
          "البيانات الطبية",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  margin:const EdgeInsets.only(left: 260, top: 23),
                  child:const Text(
                    "نوع السكري",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  )),
              Container(
                margin: const EdgeInsets.only(left: 130),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text("النوع الثاني",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Radio(
                      activeColor: Colors.black,
                      value: "second",
                      groupValue: Diabetictype,
                      onChanged: (value) {
                        setState(() {
                          Diabetictype = value.toString();
                        });
                      },
                    ),
                    const   Text("النوع الأول",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Radio(
                      activeColor: Colors.black,
                      value: "first",
                      groupValue: Diabetictype,
                      onChanged: (value) {
                        setState(() {
                          Diabetictype = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin:const EdgeInsets.only(left: 130),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const  Text("لا أعرف",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Radio(
                      activeColor: Colors.black,
                      value: "dont know",
                      groupValue: Diabetictype,
                      onChanged: (value) {
                        setState(() {
                          Diabetictype = value.toString();
                        });
                      },
                    ),
                    const  Text("سكري الحمل",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500)),
                    Radio(
                      activeColor: Colors.black,
                      value: "Pregnancy",
                      groupValue: Diabetictype,
                      onChanged: (value) {
                        setState(() {
                          Diabetictype = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 220),
                child: const Text(
                  "تحدث مع الطبيب",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding:const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    color: const Color(0xffEAEAEA),
                    borderRadius: BorderRadius.circular(12.0)),
                width: 327,
                height: 108,
                child: TextFormField(
                  maxLines: 10,
                  decoration:const InputDecoration(
                    hintText: "اشرح للطبيب حالتك أو استفسارك باختصار",
                    hintTextDirection: TextDirection.rtl,
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin:const EdgeInsets.only(left: 220),
                child:const Text(
                  "المرفقات",
                  style: TextStyle(
                      color: Color(0xff000000),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                child: ListTile(
                  leading: const Icon(Icons.delete_forever_outlined),
                  title: Container(
                      margin: const EdgeInsets.only(left: 75),
                      child:const Text('ملف حالة المريض .pdf')),
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(child:const Text('تم اضافة الملف بنجاح')),
                      const Icon(
                        Icons.done,
                        size: 12,
                      ),
                    ],
                  ),
                  trailing: Container(
                    width: 72,
                    height: 72,
                    decoration: BoxDecoration(
                        color: const Color(0xffEAEAEA),
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                ),
              ),
              const  SizedBox(height: 25),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 327,
                  height: 48,
                  decoration: BoxDecoration(
                      color:const Color(0xffEAEAEA),
                      border: Border.all(
                          color: const Color(0xFF000000),
                          width: 1.0,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(12.0)),
                  child:const Center(
                    child: Text(
                      "اضافة ملف",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const  SizedBox(height: 25),
              Container(
                margin: const EdgeInsets.only(top: 15.0),
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        height: 50,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                        color: ConstColors.primaryColor,
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "السيرة المرضية",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const Biography())),

                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
