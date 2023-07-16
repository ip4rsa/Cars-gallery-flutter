import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:merscedes_car/carList.dart';
import 'package:merscedes_car/model/carsData.dart';
import 'package:merscedes_car/model/dataModel.dart';
import 'package:merscedes_car/model/infoCarsData.dart';
import 'package:merscedes_car/model/infoCarsModel.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

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
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  CupertinoIcons.left_chevron,
                  color: Color.fromARGB(255, 61, 61, 61),
                  size: 35,
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text(
                    'مرسدس',
                    style: TextStyle(
                        color: Color.fromARGB(255, 61, 61, 61),
                        fontFamily: 'yekanlight',
                        fontWeight: FontWeight.w700,
                        fontSize: 34),
                  ),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const PageScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/img/AMG-SL/silver.png',
                scale: 2.5,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "سرعت",
                      style: TextStyle(
                          fontFamily: 'yekanlight',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Text("410"),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "صفر تا صد",
                      style: TextStyle(
                          fontFamily: 'yekanlight',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Text("2.7"),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "قدرت",
                      style: TextStyle(
                          fontFamily: 'yekanlight',
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(height: 10),
                    Text("3800"),
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
                    height: 700,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const SizedBox(height: 70),
                          SizedBox(
                            height: 130,
                            child: ListView.builder(
                              physics: const PageScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: infoCarModel.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 59, 59, 59),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    child: Center(
                                      child: Column(
                                        children: [
                                          SvgPicture.asset(
                                            infoCarModel[index].engin,
                                            height: 50,
                                          ),
                                          Text('data')
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
                              color: Color.fromARGB(255, 186, 186, 186),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: SizedBox(
                height: 130,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 140,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 38, 38, 38),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                'assets/img/InfoSVG/engine-motor-svgrepo-com (1).svg',
                                height: 50,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                carsList[DateTime.may].engin,
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
                        width: 150,
                        height: 140,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 38, 38, 38),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                'assets/img/InfoSVG/timer-svgrepo-com.svg',
                                height: 50,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                carsList[DateTime.may].engin,
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
                        width: 150,
                        height: 140,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 38, 38, 38),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                SvgPicture.asset(
                                  'assets/img/InfoSVG/power-svgrepo-com.svg',
                                  height: 40,
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  carsList[DateTime.may].engin,
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
                        width: 150,
                        height: 140,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 38, 38, 38),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              SvgPicture.asset(
                                'assets/img/InfoSVG/highway-svgrepo-com.svg',
                                height: 50,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                carsList[DateTime.may].engin,
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
          ],
        ),
      ),
    );
  }
}
