import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merscedes_car/model/dataModel.dart';

class CarPage extends StatelessWidget {
  //کانشتراکتور---------------------------------
  final CarsModel car;
  CarPage({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color.fromARGB(255, 250, 250, 250),
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    CupertinoIcons.left_chevron,
                    color: Color.fromARGB(255, 61, 61, 61),
                    size: 35,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    car.nameCarFA,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 61, 61, 61),
                        fontFamily: 'yekanlight',
                        fontWeight: FontWeight.w700,
                        fontSize: 30),
                  ),
                ),
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                car.imgCarPNG,
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    const Text(
                      "سرعت",
                      style: TextStyle(
                          fontFamily: 'yekanlight',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Text(car.speed),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "صفر تا صد",
                      style: TextStyle(
                          fontFamily: 'yekanlight',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Text(car.acceleration),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "قدرت",
                      style: TextStyle(
                          fontFamily: 'yekanlight',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 10),
                    Text(car.power),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 211, 211, 211),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    height: 850,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(height: 70),
                          SizedBox(
                            height: 130,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const PageScrollPhysics(),
                              child: SizedBox(
                                height: 130,
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 180,
                                        height: 140,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/img/InfoSVG/engine-motor-svgrepo-com (1).svg',
                                                height: 40,
                                              ),
                                              const SizedBox(height: 10),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 5, left: 5),
                                                child: Text(
                                                  car.engin,
                                                  style: const TextStyle(
                                                    fontFamily: 'yekanlight',
                                                    color: Colors.white,
                                                    fontSize: 18,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 140,
                                        height: 140,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/img/InfoSVG/chair-2-svgrepo-com.svg',
                                                height: 50,
                                              ),
                                              const SizedBox(height: 10),
                                              Text(
                                                car.passengerCapacity,
                                                style: const TextStyle(
                                                  fontFamily: 'yekanlight',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 140,
                                        height: 140,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/img/InfoSVG/architecture-building-city-svgrepo-com.svg',
                                                  height: 40,
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                  car.cityFuelEconomy,
                                                  style: const TextStyle(
                                                    fontFamily: 'yekanlight',
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 140,
                                        height: 140,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 38, 38, 38),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                'assets/img/InfoSVG/highway-svgrepo-com.svg',
                                                height: 50,
                                              ),
                                              const SizedBox(height: 20),
                                              Text(
                                                car.highwayFuelEconomy,
                                                style: const TextStyle(
                                                  fontFamily: 'yekanlight',
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 22),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Column(
                              children: [
                                Text(
                                  "توضیحات",
                                  style: TextStyle(
                                    fontFamily: 'yekanbold',
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  '...',
                                  style: TextStyle(
                                      fontFamily: 'yekanLight', fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 220,
                    height: 70,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 250, 250, 250),
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            width: 23,
                            height: 23,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 223, 213, 24),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            width: 23,
                            height: 23,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 20, 89, 173),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            width: 23,
                            height: 23,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 0, 0, 0),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Container(
                            width: 23,
                            height: 23,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 133, 67, 67),
                              shape: BoxShape.circle,
                            ),
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
      ),
    );
  }
}
