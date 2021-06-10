import 'package:flutter_app/controllers/linkCardController.dart';
import 'package:flutter_app/models/card.dart';
import 'package:get/get.dart';

class LinkedCardController extends GetxController{
  var cards = List<Card>().obs;

  @override
  void onInit(){
    super.onInit();
    fetchCards();
  }

  void fetchCards() async{
    await Future.delayed(Duration(seconds: 1));
    var result = await indexCards(1);
    if(result != null){
      cards.value = result;
    }
    else {
      print("pas de card");
    }
  }
}