import 'hotel.dart';

class Room103 extends Room{

      String description;
      Room103({this.description}) : super (description: description, name: 'Room 103');
}

String room = """
      The room is super cozy and you see a big
      double bed in there and a comfy couch. On the wall to
      your left, there is a door. Do you want to check those doors?
      """;

String sleep = """You go to sleep and wake up refreshed as never before.
       -- CONGRATULATION -- YOU WON --
       You have discovered the power of sleep""";