import 'package:flutter/material.dart';

class AppointmentBooking extends StatefulWidget {
  const AppointmentBooking({Key? key}) : super(key: key);

  @override
  State<AppointmentBooking> createState() => _AppointmentBookingState();
}

class _AppointmentBookingState extends State<AppointmentBooking> {
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

  TimeOfDay time = const TimeOfDay(hour: 7, minute: 15);

  void selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: time,
    );
    if (newTime != null) {
      setState(() {
        time = newTime;
      });
    }
  }

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
        title: const Text(
          "حجز موعد",
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
                      "اسم المريض",
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
                          hintText: "اسم المريض",
                          hintTextDirection: TextDirection.rtl,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "يوم الحجز",
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
                          hintText: "يوم السبت",
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
                      "تاريخ الحجز",
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
                      "وقت الحجز",
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
                        onTap: selectTime,
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.punch_clock_sharp),
                          hintText: "8:15 ",
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
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff407BFF)),
                      onPressed: () {},
                      child: const Text(
                        "حجز موعد",
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
