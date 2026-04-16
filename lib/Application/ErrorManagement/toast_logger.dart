import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastLogger {

  static LogException(Exception exception) {
    LogError(exception.toString());
  }

  static LogError(String message) {
    Fluttertoast.showToast(
        msg: message,
        textColor: Colors.white,
        backgroundColor: Colors.redAccent,
    );
  }

}