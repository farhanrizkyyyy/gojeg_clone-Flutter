import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      color: Colors.white,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 5),
          prefixIcon: Icon(Icons.search),
          hintText: "What would you like to eat?",
          hintStyle: TextStyle(fontSize: 14),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            borderSide: BorderSide(color: Colors.black12),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
            borderSide: BorderSide(color: Colors.black12),
          ),
        ),
      ),
    );
  }
}