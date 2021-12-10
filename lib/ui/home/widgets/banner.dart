import 'package:flutter/material.dart';

import 'balance.dart';

class BannerBalance extends StatelessWidget {
  const BannerBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
      decoration: BoxDecoration(
        color: Colors.green.shade600,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Balance(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_upward,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Pay",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Top Up",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.explore,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "Explore",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
