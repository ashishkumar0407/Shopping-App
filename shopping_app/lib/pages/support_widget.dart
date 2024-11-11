import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextFeildStyle() {
    return TextStyle(
        color: const Color.fromARGB(255, 255, 255, 255), fontSize: 50.0, fontWeight: FontWeight.bold);
  }

  static TextStyle lightTextFeildStyle() {
    return TextStyle(color: Colors.black45, fontWeight: FontWeight.w500) ;
  }

  static TextStyle semiboldTextFeildStyle(){
    return TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold);
  }
}
