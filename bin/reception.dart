import 'hotel.dart';

class Reception extends Room {

  String description;
  Reception({this.description}) : super(description: description, name: 'Reception');
}

String reception = """"
  What do you want to do?
  Choose number:
  - 1 - Chat with the receptionist. 
  - 2 - Get the key and get directions to the room. 
  - 3 - Leave the hotel.
  """;

String receptionist = 'The receptionist is flirty. Do you want to take it further?';

String toRoom = """You get the directions from the lovely receptionist and now 
      you are in the bedroom""";