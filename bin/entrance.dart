import 'dart:io';

import 'hotel.dart';
import 'reception.dart';

class Entrance extends Rooms {

  String description;
  String couch;
  Entrance({this.description}) : super(description: description, name: 'Entrance');

  void doSomething(){
    print('In front of you is a reception. Do you want to go there?');
    String userInput = stdin.readLineSync();
    if(userInput == 'go to reception' || userInput =='yes'){
      Reception reception = Reception();
      reception = User().currentRoom;
    }else{
      print('please answer the question');
    }
  }
}
