import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:merscedes_car/carList.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:merscedes_car/view/homePage.dart';

class homePage extends StatefulWidget {
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var selectecdPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double bodyMarginScreen = size.width / 16;

    List<Widget> maineScreenPage = [
      homeScreen(
        bodyMarginScreen: bodyMarginScreen,
        size: size,
        car: carList,
      ),
      carList()
    ];
    return MaterialApp(
      localizationsDelegates: const [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'), // persian
      ],
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 0, 0, 0),
          size: 30,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: btmNav(changeScreen: (int value) {
          setState(() {
            selectecdPageIndex = value;
          });
        }),
        body: Stack(
          children: [
            maineScreenPage[selectecdPageIndex],
          ],
        ),
      ),
    );
  }
}

class btmNav extends StatelessWidget {
  const btmNav({
    super.key,
    required this.changeScreen,
  });
  final Function(int) changeScreen;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 15, 15, 15),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GNav(
            backgroundColor: const Color.fromARGB(255, 15, 15, 15),
            gap: 10,
            color: const Color.fromARGB(255, 255, 255, 255),
            activeColor: Colors.white,
            tabBackgroundColor: const Color.fromARGB(133, 74, 74, 74),
            padding: const EdgeInsets.all(15),
            tabs: [
              GButton(
                onPressed: () => changeScreen(0),
                icon: CupertinoIcons.house_alt,
                text: "خانه",
                textStyle: const TextStyle(
                    fontFamily: "yekanlight", color: Colors.white),
              ),
              GButton(
                onPressed: () => changeScreen(1),
                icon: CupertinoIcons.car_detailed,
                text: "مرسدس ها",
                textStyle: const TextStyle(
                    fontFamily: "yekanlight", color: Colors.white),
              ),
              const GButton(
                icon: CupertinoIcons.photo_on_rectangle,
                text: "گالری",
                textStyle:
                    TextStyle(fontFamily: "yekanlight", color: Colors.white),
              ),
            ]),
      ),
    );
  }
}
