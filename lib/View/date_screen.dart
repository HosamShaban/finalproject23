import 'package:finalproject23/Consts/colors.dart';
import 'package:finalproject23/controller/date_controller.dart';
import 'package:finalproject23/widget/NavBar.dart';
import 'package:finalproject23/widget/date_card.dart';
import 'package:flutter/material.dart';

class DateScreen extends StatefulWidget {
  const DateScreen({Key? key}) : super(key: key);

  @override
  State<DateScreen> createState() => _DateScreenState();
}

class _DateScreenState extends State<DateScreen> with SingleTickerProviderStateMixin {
late TabController _controller;
bool showFloatingB = true;
final dateController = DateController();
String query = '';

@override
void initState() {
  super.initState();
  _controller = TabController(length: 2, vsync: this, initialIndex: 0);
  _controller.addListener(() {
    if (_controller.index == 0) {
      setState(() {
        showFloatingB = true;
      });
    } else {
      setState(() {
        showFloatingB = false;
      });
    }
  });
}

@override
void dispose() {
  _controller.dispose();
  super.dispose();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    endDrawer: NavBar(),
    appBar: AppBar(
      elevation: 0.0,
      title: const Text(
        'مواعيدي',
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            );
          },
        ),
      ],
    ),
    body: Column(
      children: [
       const SizedBox(height: 10),
        Container(
          decoration: const BoxDecoration(
            color:  Color(0xFFF3F4F9),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0),
            ),
          ),
          child: TabBar(
            indicatorColor: ConstColors.primaryColor,
            controller: _controller,
            tabs: const [
              Tab(
                child: Text(
                  'السابقة',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'التالية',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),

        Expanded(
          child: TabBarView(
            controller: _controller,
            children:  [
              ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 55,
                    margin: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: const Color(0xffEAEAEA),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "15/3/2022",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "الجمعة",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  );
                },
              ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              itemCount: dateController.dateList.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (BuildContext context, int index) {
                final item = dateController.dateList[index];
                if (query.isNotEmpty && !item.title.toLowerCase().contains(query.toLowerCase())) {
                  return const SizedBox.shrink();
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                  child: DateCard(
                    title: item.title,
                    image: item.image,
                    booking: item.booking,
                  ),
                );
              },
            ),
          ),
            ],
          ),
        ),

      ],
    ),
  );
}
}
