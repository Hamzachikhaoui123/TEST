import 'dart:convert';
import 'dart:io';
import 'package:flutter_app/urls/urls.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

storeTransfer(int transaction_id, int status, int type,
    int from_id, int to_id, double amount) async {
  var queryParameters = {
    'transaction_id': '$transaction_id',
    'status': '$status',
    'type': '$type',
    'from_id': '$from_id',
    'to_id': '$to_id',
    'amount': '$amount',
  };

  Response response = await http.post(Uri.parse('$urlLocal/transfer/store'),
      // Send authorization headers to the backend.
      headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"},
      body: queryParameters);

  return jsonDecode(response.body);
}