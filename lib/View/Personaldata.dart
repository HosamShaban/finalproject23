import 'package:flutter/material.dart';

class Personaldata extends StatefulWidget {
  const Personaldata({Key? key}) : super(key: key);

  @override
  State<Personaldata> createState() => _PersonaldataState();
}

class _PersonaldataState extends State<Personaldata> {
  DateTime selectedDate = DateTime.now();

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1950, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Object selectval = "ذكر";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 5),
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Colors.white,
        title: const Text(
          "البيانات الشخصية",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "الاسم",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffEAEAEA),
                          borderRadius: BorderRadius.circular(12.0)),
                      width: 311,
                      height: 48,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          hintText: "أدخل الاسم كاملا",
                          hintTextDirection: TextDirection.rtl,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "الجنس",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            color: const Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(12.0)),
                        width: 311,
                        height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            DropdownButton(
                              items: <String>[
                                'ذكر',
                                'أنثى',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              hint: const Text('انئر يغالي'),
                              onChanged: (value) {
                                setState(() {
                                  selectval = value!;
                                });
                              },
                            ),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "تاريخ الميلاد",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffEAEAEA),
                          borderRadius: BorderRadius.circular(12.0)),
                      width: 311,
                      height: 48,
                      child: TextFormField(
                        onTap: () => selectDate(context),
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          hintText: "7/11/1961",
                          hintTextDirection: TextDirection.rtl,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "رقم التلفون",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffEAEAEA),
                          borderRadius: BorderRadius.circular(12.0)),
                      width: 311,
                      height: 48,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          hintText: "05995621345",
                          hintTextDirection: TextDirection.rtl,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "البريد الالكتروني",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: const Color(0xffEAEAEA),
                          borderRadius: BorderRadius.circular(12.0)),
                      width: 311,
                      height: 48,
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          hintText: "example@gmail.com",
                          hintTextDirection: TextDirection.rtl,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: SizedBox(
                  width: 311,
                  height: 48,
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: const Color(0xff407BFF)),
                      onPressed: () {},
                      child: const Text(
                        "حفظ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
