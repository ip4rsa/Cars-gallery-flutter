import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

PreferredSize appBar(String title) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(80),
    child: Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(25, 94, 94, 94),
            blurRadius: 7,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: const [
            Center(
              child: Text(
                'لیست مرسدس ها',
                style: TextStyle(
                    color: Color.fromARGB(255, 27, 27, 27),
                    fontFamily: 'yekanmedum',
                    fontSize: 20),
              ),
            ),
          ],
          leading: const Icon(
            CupertinoIcons.car_detailed,
            color: Color.fromARGB(255, 31, 31, 31),
            size: 28,
          ),
        ),
      ),
    ),
  );
}
