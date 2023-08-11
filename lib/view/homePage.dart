import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/carsData.dart';
import 'carPage.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class homeScreen extends StatefulWidget {
  homeScreen({
    super.key,
    required this.bodyMarginScreen,
    required this.size,
    required this.car,
  });
  final double bodyMarginScreen;
  final Size size;
  final car;
  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      drawer: Drawer(
        elevation: 5,
        backgroundColor: const Color.fromRGBO(39, 43, 65, 1),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Image.asset(
                    'assets/image/logoWith.png',
                    scale: 1.4,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text(
                    "پروفایل کاربری",
                    style: TextStyle(
                      fontFamily: 'yekanlight',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text(
                    "درباره سبقت",
                    style: TextStyle(
                      fontFamily: 'yekanlight',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text(
                    "اشتراک گذاری سبقت",
                    style: TextStyle(
                      fontFamily: 'yekanlight',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: const ListTile(
                  title: Text(
                    "پشتیبانی",
                    style: TextStyle(
                      fontFamily: 'yekanlight',
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(93, 255, 255, 255),
                thickness: .3,
              ),
              const SizedBox(height: 20),
              ListTile(
                  title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "حساب کاربری",
                      style: TextStyle(color: Color.fromARGB(255, 87, 239, 92)),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "خروج",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            //------ App Bar ------
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 45, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "گالری مرسدس",
                    style: TextStyle(
                      fontFamily: 'yekanmedum',
                      fontWeight: FontWeight.w100,
                      color: Color.fromARGB(255, 35, 35, 35),
                      fontSize: 25,
                    ),
                  ),
                  InkWell(
                    onTap: (() {
                      _key.currentState!.openDrawer();
                    }),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Image.asset(
                        "assets/img/menuIcon.png",
                        height: 33,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            //------ title list cars ------
            const Padding(
              padding: EdgeInsets.fromLTRB(36, 0, 15, 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(CupertinoIcons.text_badge_star),
                  Padding(
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
                  //  size.height / 3.06
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: carsList.getRange(0, 5).length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.fromLTRB(
                            index == 0 ? widget.bodyMarginScreen : 8, 8, 7, 8),
                        child: InkWell(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CarPage(car: carsList[index]),
                            ),
                          ),
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
                                      const EdgeInsets.fromLTRB(15, 15, 15, 0),
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
                                      const EdgeInsets.fromLTRB(15, 30, 10, 0),
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
                                        onPressed: () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CarPage(car: carsList[index]),
                                          ),
                                        ),
                                        child: const Padding(
                                          padding:
                                              EdgeInsets.fromLTRB(3, 5, 3, 5),
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
            const SizedBox(height: 35),

            //------ section 2 BTN ------
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 230,
                width: 360,
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
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          CupertinoIcons.left_chevron,
                          color: Colors.blueAccent,
                          size: 30,
                        ),
                        InkWell(
                          // onTap: () => Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => CarPage(car: carsList[index]),
                          //   ),
                          // ),
                          child: Text(
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
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => VideoPlayersScreen()));
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
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
