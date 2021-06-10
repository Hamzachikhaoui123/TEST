import 'dart:convert';
import 'dart:io';
import 'package:flutter_app/models/card.dart';
import 'package:flutter_app/urls/urls.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

storeCard(String user_id, String cardholder_name, String card_number,
    String bank_name, String month, String year) async {
  var queryParameters = {
    'user_id': '$user_id',
    'cardholder_name': '$cardholder_name',
    'card_number': '$card_number',
    'bank_name': '$bank_name',
    'month': '$month',
    'year': '$year',
  };

  Response response = await http.post(Uri.parse('$urlLocal/card/store'),
      // Send authorization headers to the backend.
      headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"},
      body: queryParameters);

  return jsonDecode(response.body);
}

Future<List<Card>> indexCards(int id) async {
  Response response = await http.get(Uri.parse('$urlLocal/card/index/$id'),
      // Send authorization headers to the backend.
      headers: {HttpHeaders.authorizationHeader: "x-www-form-urlencoded"});
  var jsonData = json.decode(response.body);
  List<Card> cards = [];
  for (var u in jsonData["data"][0]) {
    Card card = Card(u['id'], u['user_id'], u['cardholder_name'],
        u['card_number'], u['bank_name'], u['month'], u['year']);
    cards.add(card);
  }
  return cards;
}
