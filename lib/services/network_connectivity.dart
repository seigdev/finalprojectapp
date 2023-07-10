// ignore_for_file: avoid_print

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../utils/constants.dart';

class NetworkConnectivity {
  NetworkConnectivity._();
  static final _instance = NetworkConnectivity._();
  static NetworkConnectivity get instance => _instance;
  final _controller = StreamController.broadcast();
  Stream get myStream => _controller.stream;
  bool hasInternet = false;

  // 1.
  void initialise(BuildContext context) async {
    // to check type of network available.
    Connectivity().onConnectivityChanged.listen((result) {
      // print(result);
    });

    // to check wether there is internet service or not.
    InternetConnectionChecker().onStatusChange.listen(
      (status) {
        hasInternet = status == InternetConnectionStatus.connected;
        hasInternet
            ? print("Internet connection is active.")
            : displayWarningMotionToast(
                context, "Check your network connection.");
      },
    );
  }

  void initialiseForApi() async {
    // to check type of network available.
    Connectivity().onConnectivityChanged.listen((result) {
      // print(result);
    });
    // to check wether there is internet service or not.
    InternetConnectionChecker().onStatusChange.listen(
      (status) {
        hasInternet = status == InternetConnectionStatus.connected;
        hasInternet
            ? print("Internet connection is active.")
            : print("Internet connection isn't active.");
      },
    );
  }
}
