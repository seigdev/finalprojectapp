// ignore_for_file: use_build_context_synchronously, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'dart:io';

import 'package:finalprojectapp/authstate.dart';
import 'package:finalprojectapp/models/nearby_doctor_model.dart';
import 'package:finalprojectapp/services/preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

import '../models/user_model.dart';
import '../utils/constants.dart';
import '../utils/navigation.dart';
import 'network_connectivity.dart';

final dataProvider = Provider<ApiServices>((ref) => ApiServices());
const String baseUrl = 'https://finalapp-backend.onrender.com';
NetworkConnectivity networkConnectivity = NetworkConnectivity.instance;
Map<String, String> headers = {
  HttpHeaders.contentTypeHeader: "application/json"
};

class ApiServices {
  UserModel? userData;

  // user login
  Future userLogin(BuildContext context, String email, String password) async {
    final response = await post(
      Uri.parse('$baseUrl/user/user-login'),
      headers: headers,
      body: jsonEncode({'email': '$email', 'password': '$password'}),
    );
    networkConnectivity.initialise(context);
    if (response.statusCode == 200) {
      var endPointResponse = jsonDecode(response.body);
      print(endPointResponse);
      var message = endPointResponse['message'];
      var status = endPointResponse['status'];
      var data = endPointResponse['data'];
      userData = UserModel.fromJson(endPointResponse['data']);
      if (status == true) {
        print(response.body);
        UserPreferences.setLoginData(false);
        UserPreferences.setUserId(data['userId']);
        UserPreferences.setName(data['name']);
        UserPreferences.setUserType(data['type']);
        pushTo(context, const AuthState());
        displaySuccessMotionToast(context, message);
      } else {
        displayErrorMotionToast(context, message);
        print(message);
      }
    } else {
      displayErrorMotionToast(context, "An error occured");
      print(Exception(response.reasonPhrase).toString());
      print(response.body);
    }
  }

  // user register
  Future userRegister(BuildContext context, String name, String email,
      String phone, String type, String location, String password) async {
    final response = await post(Uri.parse('$baseUrl/user/user-register'),
        headers: headers,
        body: jsonEncode({
          'name': '$name',
          'phone': '$phone',
          'type': '$userData',
          'location': '$location',
          'email': '$email',
          'password': '$password'
        }));
    networkConnectivity.initialise(context);
    if (response.statusCode == 200) {
      var endPointResponse = jsonDecode(response.body);
      print(endPointResponse);
      var message = endPointResponse['message'];
      var status = endPointResponse['status'];
      var data = endPointResponse['data'];
      userData = UserModel.fromJson(endPointResponse['data']);
      if (status == true) {
        print(response.body);
        UserPreferences.setLoginData(false);
        UserPreferences.setUserId(data['userId']);
        UserPreferences.setName(data['name']);
        UserPreferences.setUserType(data['type']);
        pushTo(context, const AuthState());
      } else {
        displayErrorMotionToast(context, message);
        print(message);
      }
    } else {
      displayErrorMotionToast(context, "An error occured");
      print(Exception(response.reasonPhrase).toString());
      print(response.body);
    }
  }

  // get doctors in a location
  Future<List<DoctorNearbyModel>> getDoctorNearby() async {
    final response = await get(Uri.parse('$baseUrl/location/show/akobo'));
    Map<String, dynamic> endPointResponse = json.decode(response.body);

    if (response.statusCode == 200 && endPointResponse['data'] != null) {
      Map<String, dynamic> endPointResponse = json.decode(response.body);
      List<dynamic> data = endPointResponse['data']['doctors'];
      print(response.body);
      return data.map((e) => DoctorNearbyModel.fromJson(e)).toList();
    } else {
      print(Exception(response.reasonPhrase).toString());
      print(response.body);
      return <DoctorNearbyModel>[].toList();
    }
  }
}
