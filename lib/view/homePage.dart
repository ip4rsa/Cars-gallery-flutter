import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:merscedes_car/carList.dart';
import '../model/carsData.dart';

class homeScreen extends StatefulWidget {
  homeScreen({
    super.key,
    required this.bodyMarginScreen,
    required this.size,
  });
  final double bodyMarginScreen;
  final Size size;
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          //------ App Bar ------
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 45, 20, 0),
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

          //------ title list cars ------
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 0, 15, 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {},
                  child: const Icon(CupertinoIcons.text_badge_star),
                ),
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

          //------ Cars List ------
          Stack(
            children: [
              SizedBox(
                height: 265,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: carsList.getRange(0, 5).length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(
                          index == 0 ? widget.bodyMarginScreen : 8, 8, 7, 8),
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
                          // duration: Duration(seconds: 3),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 9, 15, 0),
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
                                            color:
                                                Color.fromARGB(255, 49, 49, 49),
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
                                padding:
                                    const EdgeInsets.fromLTRB(10, 34, 10, 0),
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
                                        backgroundColor: const Color.fromARGB(
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
                                            Icon(CupertinoIcons.right_chevron)
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

          const SizedBox(height: 45),

          //------ section 2 BTN ------
          Container(
            height: widget.size.height / 3.7,
            width: widget.size.width / 1.09,
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
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => carList())),
                      child: const Text(
                        "تاریخچه شرکت مرسدس بنز",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'yekanlight',
                            color: Color.fromARGB(255, 255, 255, 255)),
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
                    const SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        // setState(() {
                        //   imgOppacity = 1;
                        // });
                      },
                      child: const Text(
                        "گالری ماشین ها",
                        style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'yekanlight',
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: widget.size.height / 19),
        ],
      ),
    );
  }
}
