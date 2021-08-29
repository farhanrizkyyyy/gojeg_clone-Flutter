import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HorizontalItemsTitle extends StatelessWidget {
  String category, description;

  HorizontalItemsTitle(
      {Key? key, required this.category, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category,
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                description,
                style: TextStyle(fontSize: 12, color: Colors.black54),
              )
            ],
          ),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "See more",
                style: TextStyle(
                    color: Colors.green.shade800, fontWeight: FontWeight.bold),
              ),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(Colors.green.shade100),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}