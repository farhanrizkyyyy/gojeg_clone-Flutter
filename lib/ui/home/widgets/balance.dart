import 'package:flutter/material.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 75,
        width: 120,
        margin: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Balance:",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.green.shade800),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Rp. 1.000.000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ));
  }
}
