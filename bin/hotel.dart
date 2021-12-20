

import 'dart:io';

class Room{
  String name;
  String description;
  List<Room> nextRoom = [];

  Room({this.name, this.description});

  void addNextRoom(Room room){
    if (!nextRoom.contains(room)){
      nextRoom.add(room);
      print(nextRoom.length);
    }

  }

  void describeRooms(){
    print(description);
    //int option = 1;
    //for (Room rooms in nextRoom){
    //for(int option = 1; option < 1; option++){
    //print(option);
   // print('$option, ${nextRoom.length}');
    //}
  }
}

class Entrance extends Room {

  String description;

  Entrance({this.description}) : super(description: description, name: 'Entrance');
  Room rooms = Room();
}

class Reception extends Room {

  String description;
  Reception({this.description}) : super(description: description, name: 'Reception');
}

class Room103 extends Room{

  String description;
  Room103({this.description}) : super (description: description, name: 'Room 103');
}

class SexDungeon extends Room{

  String description;
  SexDungeon({this.description}) : super (description: description, name: 'The sex dungeon');
}
class Map {

  Room startingRoom;
  Room currentRoom;

  Map(){
    Room entrance = Entrance(
        description: 'You are in a bright room with beautiful flowers and everything '
            'have changed since the last time you visited. '
            'You can see a reception in front of you'
    );
    Room reception = Reception(
        description: '"Good evening Mr. Lee, how can we help you today?" '
            'The receptionist seems to know you, but you don´t recall to have met her before.'
    );
    Room room103 = Room103(
        description: 'You get to the room, it is downstairs and has an extra door on the wall, the door is closed and'
            ' has a special kind of lock on it.'
    );
    Room sexDungeon = SexDungeon(
        description: 'The room is dark and you start looking around. There are no windows that you can see. '
            'The room has a big bed with 4 pillars that reach up to the ceiling at each corner of the bed'
            'At the end of the bed, there is a cage, like a cage for a large dog, but no dog like things in there.'
            'At the other side of the room there is a closet with the same kind of lock as the door to this room had.'
    );
    entrance.addNextRoom(reception);
    reception.addNextRoom(room103);
    room103.addNextRoom(sexDungeon);
    startingRoom = entrance;
    currentRoom = reception;

  }
}

void main(){
  Map map = Map();
  map.startingRoom.describeRooms();
  map.currentRoom;

  print('Now you are in the ${map.startingRoom.name} do you want to go to the next room?');
  String userInput1 = stdin.readLineSync();
  if (userInput1 == 'go to reception' || userInput1 == 'yes') {
    print('You are now in the ${map.currentRoom.name}');
    map.currentRoom.describeRooms();
    print(""""
  What do you want to do?
  Choose number:
  - 1 - Chat with the receptionist. 
  - 2 - Get the key and get directions to the room. 
  - 3 - Leave the hotel.
  """);
    String userInput2 = stdin.readLineSync();
    if (userInput2 == '1'){
      print('The receptionist is flirty. Do you want to take it further?');
      String recep1 = stdin.readLineSync();
      if (recep1 == 'yes'){
        print('You asked for it!');
        //TODO: Lead him down to the dungeon
      }else {
        print('Please leave the hotel and never come back  -- GAME OVER -- ');
      }
    }else if (userInput2 == '2'){
      map.currentRoom.nextRoom;
      print('You get the directions from the lovely receptionist and now you are in ${map.currentRoom.nextRoom}');

      print("""
    What do you want to do?
    Choose a number:
    - 1 - Explore the room
    - 2 - Go to sleep 
    """);
      String userInput3 = stdin.readLineSync();
      if (userInput3 == '1'){
        print("""
      The room is super cozy and you see a big
      double bed in there and a comfy couch. On the wall to
      your left, there is a door. Do you want to check those doors?
      """);
        String userInput4 = stdin.readLineSync();
        if (userInput4 == 'yes'){
          print('Do you have the key to the door, it is the same key as for the room?');
          String userInput5 = stdin.readLineSync();
          if (userInput5 == 'yes'){
            print("""
    \tYou can finally open up the door, it is a dark room and 
    you begin to look around. There are no windows that you can
    see, but all walls in the room are covered in drapes. The room 
    has a big bed with four pillars that reach up to the ceiling at
    each corner of the bed. At the end of the bed there is a cage, 
    like a cage for a large dog, but there is no dog, just some collars
    and something that looks like black bones, but you can not see clear
    in the dark. There is also a big old closet there. """);
            print("""
            What do you want to do?
            - 1 - Leave the room.
            - 2 - Check the closet.
            """);
            String userInput6 = stdin.readLineSync();
            if (userInput6 == '1'){
              print("""You go to sleep and wake up refreshed as never before.
       -- CONGRATULATION -- YOU WON --
       You have discovered the power of sleep""");
            }else if (userInput6 == '2'){
              print("""
              You open up the closet, it is a big one,
              it is dark and you take a look in closet.
              You can hear a deep voice:
              "Hi, I´m BOB and I like butts"
              
              --- GAME OVER ---
              """);
            }
          }else if (userInput5 == 'no'){
            print('Look for a key');
          }
        }
      }else if (userInput3 == '2'){
        print("""You go to sleep and wake up refreshed as never before.
       -- CONGRATULATION -- YOU WON --
       You have discovered the power of sleep""");
      }
    }else {
      print('Please leave the hotel and never come back  -- GAME OVER -- ');
    }
  } else if (userInput1 == 'no'){
    print('Please leave the hotel and never come back  -- GAME OVER -- ');
  }else{
    print('please answer the question');
  }


}



