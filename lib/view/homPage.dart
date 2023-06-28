import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:merscedes_car/model/carsData.dart';
import 'package:merscedes_car/model/dataModel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMarginScreen = size.width / 16;
    List images = [
      'assets/img/homeSlider/slider-1.webp',
      'assets/img/homeSlider/slider-2.webp',
      'assets/img/homeSlider/slider-3.webp',
      'assets/img/homeSlider/slider-4.webp',
      'assets/img/homeSlider/slider-5.webp',
      'assets/img/homeSlider/slider-6.webp',
      'assets/img/homeSlider/slider-7.webp',
      'assets/img/homeSlider/slider-8.webp',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: const [
        Locale('fa', ''), // persian
      ],
      home: Scaffold(
        bottomNavigationBar: Container(
          height: 100,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 15, 15, 15),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: GNav(
                backgroundColor: Color.fromARGB(255, 15, 15, 15),
                gap: 15,
                color: Color.fromARGB(255, 255, 255, 255),
                activeColor: Colors.white,
                tabBackgroundColor: Color.fromARGB(133, 74, 74, 74),
                padding: EdgeInsets.all(15),
                tabs: [
                  GButton(
                    icon: CupertinoIcons.house_alt,
                    text: "خانه",
                    textStyle: TextStyle(
                        fontFamily: "yekanlight", color: Colors.white),
                  ),
                  GButton(
                    icon: CupertinoIcons.car_detailed,
                    text: "مرسدس ها",
                    textStyle: TextStyle(
                        fontFamily: "yekanlight", color: Colors.white),
                  ),
                  GButton(
                    icon: CupertinoIcons.heart,
                    text: "مرسدس های مورد علاقه",
                    textStyle: TextStyle(
                        fontFamily: "yekanlight", color: Colors.white),
                  ),
                ]),
          ),
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //-----> App Bar
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 55, 20, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Image.asset(
                          "assets/img/menuIcon.png",
                          height: 33,
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

              const SizedBox(height: 30),

              //------- title list cars
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 17, 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap: () {}, child: Icon(CupertinoIcons.arrow_left)),
                    const Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Text(
                        "پر طرفدار ها",
                        style: TextStyle(
                          height: 1.5,
                          fontFamily: 'yekanMedum',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox(height: 20),

              //------ Cars List
              Stack(
                children: [
                  SizedBox(
                    height: 265,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: carsList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.fromLTRB(
                              index == 0 ? bodyMarginScreen : 8, 8, 7, 8),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(17),
                                  ),
                                  color: Color.fromARGB(255, 61, 120, 224),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(140, 12, 101, 161),
                                      spreadRadius: .5,
                                      blurRadius: 4,
                                      offset: Offset(.4, 2.5),
                                    ),
                                  ]),
                              height: 100,
                              width: 210,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(15, 13, 15, 0),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 2),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            carsList[index].nameCarEN,
                                            style: const TextStyle(
                                                fontFamily: 'yekanMedum',
                                                color: Color.fromARGB(
                                                    255, 49, 49, 49),
                                                fontSize: 17),
                                          ),
                                          Text(
                                            carsList[index].nameCarFA,
                                            style: const TextStyle(
                                                fontFamily: 'yekanMedum',
                                                color: Colors.white,
                                                fontSize: 19),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 30),
                                    child: Image.asset(
                                      carsList[index].imgCar,
                                      scale: 3.6,
                                      fit: BoxFit.none,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 34, 10, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          carsList[index].classCar,
                                          style: const TextStyle(
                                            fontFamily: 'yekanlight',
                                            color: Colors.white,
                                          ),
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 38, 38, 38),
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                          ),
                                          onPressed: () {},
                                          child: const Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 5, 0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "مشاهده",
                                                  style: TextStyle(
                                                      fontFamily: 'yekanMedum'),
                                                ),
                                                Icon(CupertinoIcons
                                                    .right_chevron)
                                              ],
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
                        );
                      },
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),

              Container(
                height: size.height / 3.7,
                width: size.width / 1.09,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(23)),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color.fromRGBO(0, 15, 19, 1),
                      Color.fromARGB(253, 20, 30, 39),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          CupertinoIcons.left_chevron,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              "تاریخچه شرکت مرسدس بنز",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: 'yekanlight',
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                      child: Divider(
                        color: Color.fromARGB(184, 53, 107, 201),
                        indent: 22,
                        endIndent: 22,
                        thickness: .5,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Icon(
                          CupertinoIcons.left_chevron,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: InkWell(
                            onTap: () {},
                            child: const Text(
                              "گالری ماشین ها",
                              style: TextStyle(
                                  fontSize: 19,
                                  fontFamily: 'yekanlight',
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
