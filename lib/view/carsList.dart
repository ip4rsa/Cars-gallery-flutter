import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merscedes_car/model/carsData.dart';

class carsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 43, 20, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Icon(
                            CupertinoIcons.left_chevron,
                            size: 30,
                          ),
                        ),
                      ),
                      const Text(
                        "گالری مرسدس",
                        style: TextStyle(
                          fontFamily: 'yekanmedum',
                          fontWeight: FontWeight.w100,
                          color: Color.fromARGB(255, 35, 35, 35),
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 340,
                          height: 155,
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(63, 208, 208, 208),
                                  blurRadius: 16,
                                  spreadRadius: 3,
                                ),
                              ]),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 6, 20, 0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          15, 0, 0, 0),
                                      child: Image.asset(
                                        "assets/img/AMG-SL/silver.png",
                                        scale: 3.7,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 11, 0),
                                      child: Text(
                                        carsList[0].nameCarFA,
                                        style: const TextStyle(
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          fontSize: 20,
                                          fontFamily: 'yekanmedum',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 4, 0, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(17, 0, 0, 0),
                                        child: Text(
                                          "2022",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 115, 115, 115)),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 58, 115, 214),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(13),
                                                  bottomRight:
                                                      Radius.circular(13),
                                                  topRight: Radius.circular(13),
                                                  bottomLeft:
                                                      Radius.circular(13)),
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
                const SizedBox(height: 20),
                Container(
                  width: 340,
                  height: 155,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(63, 208, 208, 208),
                          blurRadius: 16,
                          spreadRadius: 3,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 6, 20, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Image.asset(
                                "assets/img/AMG-SL/silver.png",
                                scale: 3.7,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                              child: Text(
                                carsList[0].nameCarFA,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20,
                                  fontFamily: 'yekanmedum',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                                child: Text(
                                  "2022",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 115, 115, 115)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 58, 115, 214),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(13),
                                          bottomRight: Radius.circular(13),
                                          topRight: Radius.circular(13),
                                          bottomLeft: Radius.circular(13)),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text(
                                      "مشاهده",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'yekanMedum'),
                                    ),
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
                const SizedBox(height: 20),
                Container(
                  width: 340,
                  height: 155,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(63, 208, 208, 208),
                          blurRadius: 16,
                          spreadRadius: 3,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 6, 20, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Image.asset(
                                "assets/img/AMG-SL/silver.png",
                                scale: 3.7,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                              child: Text(
                                carsList[0].nameCarFA,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20,
                                  fontFamily: 'yekanmedum',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                                child: Text(
                                  "2022",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 115, 115, 115)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 58, 115, 214),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(13),
                                          bottomRight: Radius.circular(13),
                                          topRight: Radius.circular(13),
                                          bottomLeft: Radius.circular(13)),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text(
                                      "مشاهده",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'yekanMedum'),
                                    ),
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
                const SizedBox(height: 20),
                Container(
                  width: 340,
                  height: 155,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(63, 208, 208, 208),
                          blurRadius: 16,
                          spreadRadius: 3,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 6, 20, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Image.asset(
                                "assets/img/AMG-SL/silver.png",
                                scale: 3.7,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                              child: Text(
                                carsList[0].nameCarFA,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20,
                                  fontFamily: 'yekanmedum',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                                child: Text(
                                  "2022",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 115, 115, 115)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 58, 115, 214),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(13),
                                          bottomRight: Radius.circular(13),
                                          topRight: Radius.circular(13),
                                          bottomLeft: Radius.circular(13)),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text(
                                      "مشاهده",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'yekanMedum'),
                                    ),
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
                const SizedBox(height: 20),
                Container(
                  width: 340,
                  height: 155,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(63, 208, 208, 208),
                          blurRadius: 16,
                          spreadRadius: 3,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 6, 20, 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Image.asset(
                                "assets/img/AMG-SL/silver.png",
                                scale: 3.7,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 11, 0),
                              child: Text(
                                carsList[0].nameCarFA,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontSize: 20,
                                  fontFamily: 'yekanmedum',
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.fromLTRB(17, 0, 0, 0),
                                child: Text(
                                  "2022",
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 115, 115, 115)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 58, 115, 214),
                                    shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(13),
                                          bottomRight: Radius.circular(13),
                                          topRight: Radius.circular(13),
                                          bottomLeft: Radius.circular(13)),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Text(
                                      "مشاهده",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'yekanMedum'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
