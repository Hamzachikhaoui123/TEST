import 'dart:convert';
import 'dart:io';

import 'package:flutter_app/urls/urls.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

signIn(String email, String password) async {
  var queryParameters = {
    'email': '$email',
    'password': '$password',
  };

  Response response = await http.post(Uri.parse('$urlLocal/user/login'),
      // Send authorization headers to the backend.
      headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"},
      body: queryParameters);
  print(response.body);
  return jsonDecode(response.body);
}

registration(String first_name, String email, String password) async {
  var queryParameters = {
    'first_name': '$first_name',
    'email': '$email',
    'password': '$password',
  };

  Response response = await http.post(Uri.parse('$urlLocal/user/register'),
      // Send authorization headers to the backend.
      headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"},
      body: queryParameters);

  return jsonDecode(response.body);
}

resetPassword(String email, String old_password, String new_password,
    String new_confirm) async {
  var queryParameters = {
    'old': '$old_password',
    'new': '$new_password',
    'new_confirm': '$new_confirm',
  };

  Response response =
      await http.put(Uri.parse('$urlLocal/user/password/reset/$email'),
          // Send authorization headers to the backend.
          headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"},
          body: queryParameters);

  return jsonDecode(response.body);
}

forgotPasswordMail(String email) async {
  var queryParameters = {
    'email': '$email',
  };

  Response response =
      await http.post(Uri.parse('$urlLocal/user/password/forgot/mail'),
          // Send authorization headers to the backend.
          headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"},
          body: queryParameters);

  return jsonDecode(response.body);
}

forgetPassword(String token, String new_password, String new_confirm) async {
  var queryParameters = {
    'new': '$new_password',
    'new_confirm': '$new_confirm',
  };

  Response response =
      await http.post(Uri.parse('$urlLocal/user/password/forgot/$token'),
          // Send authorization headers to the backend.
          headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"},
          body: queryParameters);

  return jsonDecode(response.body);
}

verifyingIdentityPhone(String token) async {
  var queryParameters = {
    'token': '$token',
  };

  Response response = await http.post(Uri.parse('$urlLocal/user/phone/verify'),
      // Send authorization headers to the backend.
      headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"},
      body: queryParameters);

  return jsonDecode(response.body);
}

resendVerificationMail(String email) async {
  var queryParameters = {
    'email': '$email',
  };

  Response response = await http.post(Uri.parse('$urlLocal/user/verify/resend'),
      // Send authorization headers to the backend.
      headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"},
      body: queryParameters);

  print(response.body);
  return jsonDecode(response.body);
}
