import 'hotel.dart';

class Entrance extends Room {

  String description;

  Entrance({this.description}) : super(description: description, name: 'Entrance');
  Room rooms = Room();
}

String entrance = 'Now you are in the entrance of the hotel do you want to go to the next room?';

String leave = 'Please leave the hotel and never come back  -- GAME OVER -- ';