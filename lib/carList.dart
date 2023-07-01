import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merscedes_car/model/carsData.dart';

class carList extends StatefulWidget {
  @override
  State<carList> createState() => _carListState();
}

class _carListState extends State<carList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        CupertinoIcons.left_chevron,
                        size: 27,
                      ),
                    ),
                    const Text(
                      "لیست مرسدس ها",
                      style: TextStyle(
                        fontFamily: 'yekanmedum',
                        fontWeight: FontWeight.w100,
                        color: Color.fromARGB(255, 35, 35, 35),
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 375,
                height: double.tryParse('2800'),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: carsList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 340,
                                height: 165,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromARGB(82, 208, 208, 208),
                                        blurRadius: 16,
                                        spreadRadius: 3,
                                      ),
                                    ]),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 20, 0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                13, 0, 0, 0),
                                            child: Image.asset(
                                              carsList[index].imgCarPNG,
                                              scale: 3.7,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 11, 0),
                                            child: Text(
                                              carsList[index].nameCarFA,
                                              style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0),
                                                fontSize: 20,
                                                fontFamily: 'yekanmedum',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  17, 0, 0, 0),
                                              child: Text(
                                                "2022",
                                                style: TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 115, 115, 115)),
                                              ),
                                            ),
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color.fromARGB(
                                                        255, 58, 115, 214),
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  13),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  13),
                                                          topRight:
                                                              Radius.circular(
                                                                  13),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  13)),
                                                ),
                                              ),
                                              onPressed: () {},
                                              child: const Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    10, 0, 10, 0),
                                                child: Text(
                                                  "مشاهده",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'yekanMedum'),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
