import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merscedes_car/model/dataModel.dart';

class CarPage extends StatefulWidget {
  final CarsModel car;
  CarPage({super.key, required this.car});
  @override
  State<CarPage> createState() => _CarPageState();
}

class _CarPageState extends State<CarPage> {
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
                const Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    widget.car.nameCarFA,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 61, 61, 61),
                        fontFamily: 'yekanlight',
                        fontWeight: FontWeight.w700,
                        fontSize: 28),
                  ),
                ),
                const Expanded(child: SizedBox()),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Icon(
                      CupertinoIcons.right_chevron,
                      color: Color.fromARGB(255, 61, 61, 61),
                      size: 31,
                    ),
                  ),
                ),
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
                widget.car.imgCarPNG,
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
                    Text(
                      widget.car.speed,
                      style: const TextStyle(
                        fontFamily: 'yekanlight',
                      ),
                    ),
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
                    Text(
                      widget.car.acceleration,
                      style: const TextStyle(
                        fontFamily: 'yekanlight',
                      ),
                    ),
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
                    Text(
                      widget.car.power,
                      style: TextStyle(
                        fontFamily: 'yekanlight',
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 211, 211, 211),
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                    ),
                    // height: 1500,
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
                                                  widget.car.engin,
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
                                                widget.car.passengerCapacity,
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
                                                  widget.car.cityFuelEconomy,
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
                                                widget.car.highwayFuelEconomy,
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
                          const SizedBox(height: 32),
                          const Padding(
                            padding: EdgeInsets.only(right: 25, bottom: 20),
                            child: Row(
                              children: [
                                Text(
                                  "توضیحات :",
                                  style: TextStyle(
                                    fontFamily: 'yekanbold',
                                    fontSize: 27,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Text(
                              widget.car.articleCar,
                              style: const TextStyle(
                                height: 1.45,
                                fontFamily: 'yekanLight',
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                          const Divider(
                            color: Color.fromARGB(118, 19, 104, 194),
                            endIndent: 30,
                            indent: 30,
                            thickness: .8,
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(right: 25, top: 25, bottom: 20),
                            child: Row(
                              children: [
                                Icon(Icons.rocket_rounded),
                                SizedBox(width: 10),
                                Text(
                                  "آپشن ها :",
                                  style: TextStyle(
                                    fontFamily: 'yekanbold',
                                    fontSize: 25,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                            child: Text(
                              widget.car.options,
                              style: const TextStyle(
                                height: 1.45,
                                fontFamily: 'yekanLight',
                                fontSize: 18,
                              ),
                              textAlign: TextAlign.right,
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
                              color: Color.fromARGB(255, 237, 219, 22),
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
                              color: Color.fromARGB(255, 28, 110, 209),
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
                              color: Color.fromARGB(255, 168, 44, 44),
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
