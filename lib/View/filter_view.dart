import 'package:flutter/material.dart';

class FilterView extends StatelessWidget {
  const FilterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        children: [
         const SizedBox(height: 40),
          Container(
            height: 4,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xff8B97A9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Material(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Image.asset(
                      'assets/images/close.png',
                      width: 38,
                      height: 30,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const Flexible(
                  flex: 1,
                  child:  Text(
                    'الفرز والعرض حسب',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ),
             const SizedBox(width: 27)

    ],
    ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 15 , right: 13),
                  child: Text(
                    'الفرز',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding:const EdgeInsets.only(top: 2 , right: 10),
                  child:SizedBox(
                    height: 80,
                    child: GridView.builder(
                      padding: const EdgeInsets.only(left: 100),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 5,
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 10,
                        childAspectRatio: 1,
                      ),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 15, right: 5),
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color:const Color(0xffF8F8F8),
                              onPressed: () {},
                              child: Text('${index + 1}⭐️' , style: const TextStyle(
                                color: Colors.black
                              ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MaterialButton(
                      minWidth: 108,
                      height: 35,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color:const Color(0xffF8F8F8),
                      onPressed: () {},
                      child: const Text('مغلق' , style:   TextStyle(
                          color: Colors.black,
                          fontSize: 16

                      ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    MaterialButton(
                      minWidth: 108,
                      height: 35,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      color:const Color(0xffF8F8F8),
                      onPressed: () {},
                      child:const Text('مفتوح الآن', style:  TextStyle(
                          color: Colors.black,
                        fontSize: 16
                      ),
                      ),
                    )

                  ],
                ),
              ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: 15 , right: 13),
                      child: Text(
                        'العرض حسب',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 13),
                  child: InkWell(
                    onTap: () {
                      // Add onTap functionality here
                    },
                    child: const Text(
                      'الأكثر توصية',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 13),
                  child: InkWell(
                    onTap: () {
                      // Add onTap functionality here
                    },
                    child: const Text(
                      'الأكثر مشاهدة',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),

              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, right: 13),
                  child: InkWell(
                    onTap: () {
                      // Add onTap functionality here
                    },
                    child: const Text(
                      'الأقرب مسافة',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
