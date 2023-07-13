import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merscedes_car/carList.dart';
import 'package:merscedes_car/model/carsData.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 28, 0, 0),
          child: AppBar(
              backgroundColor: Color.fromARGB(255, 250, 250, 250),
              elevation: 0,
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    CupertinoIcons.left_chevron,
                    color: Color.fromARGB(255, 61, 61, 61),
                    size: 35,
                  ),
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 23, 0),
                    child: Text(
                      'مرسدس',
                      style: TextStyle(
                          color: Color.fromARGB(255, 61, 61, 61),
                          fontFamily: 'yekanlight',
                          fontWeight: FontWeight.w700,
                          fontSize: 35),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                ],
              )),
        ),
      ),
      body: Column(
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
                  Text("-"),
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
                  Text("-"),
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
                  Text("-"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            width: 200,
            height: 40,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 202, 202, 202),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 17,
                    height: 17,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 223, 213, 24),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 17,
                    height: 17,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 20, 89, 173),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 17,
                    height: 17,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    width: 17,
                    height: 17,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 186, 186, 186),
                      shape: BoxShape.circle,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.amber,
            width: 300,
            height: 400,
          )
        ],
      ),
    );
  }
}
