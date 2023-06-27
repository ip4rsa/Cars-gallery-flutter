import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:merscedes_car/model/carsData.dart';
import 'package:merscedes_car/model/dataModel.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMarginScreen = size.width / 22;
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
        body: SingleChildScrollView(
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
                        fontFamily: 'yekanBold',
                        fontWeight: FontWeight.w100,
                        color: Color.fromARGB(255, 35, 35, 35),
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              //------- Slider
              Container(
                width: 370,
                height: 100,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.92,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 6),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 1000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.vertical,
                  ),
                  items: images.map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(106, 64, 64, 64),
                                spreadRadius: 1,
                                blurRadius: 1,
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(i),
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 35),

              //------- title list cars
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 15, 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        "همه",
                        style: TextStyle(
                          fontFamily: 'yekanMedum',
                          fontSize: 14,
                          color: Color.fromARGB(255, 36, 90, 182),
                        ),
                      ),
                    ),
                    const Text(
                      "پر طرفدار ها",
                      style: TextStyle(
                        fontFamily: 'yekanMedum',
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

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

              const SizedBox(
                height: 30,
              ),

              Container(
                height: size.height / 8,
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      CupertinoIcons.left_chevron,
                      color: Colors.blueAccent,
                      size: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text(
                        "دانستی هایی در مورد شرکت مرسدس",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'yekanlight',
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
