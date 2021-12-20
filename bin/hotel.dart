

import 'dart:io';
import 'entrance.dart';
import 'reception.dart';
import 'room103.dart';
import 'story.dart';
import 'sex_dungeon.dart';
class Room{
  String name;
  String description;
  List<Room> nextRoom = [];

  Room({this.name, this.description});


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
    startingRoom = entrance;
    currentRoom = reception;

  }
}

void main(){
  Map map = Map();
  map.startingRoom;
  map.currentRoom;

  print(story);
  print(entrance);
  String userInput1 = stdin.readLineSync();
  if (userInput1 == 'go to reception' || userInput1 == 'yes') {
    print('You are now in the ${map.currentRoom.name}');
    print(reception);
    String userInput2 = stdin.readLineSync();
    if (userInput2 == '1'){
      print(receptionist);
      String recep1 = stdin.readLineSync();
      while (recep1 == 'no'){break; }
      if (recep1 == 'yes'){
        print('Are you willing to go with the receptionist?');
        String recep2 = stdin.readLineSync();
        if (recep2 == 'yes'){
          print(receptionistToSexDungeon);
          print("""
          What do you want to do?
          - 1 - Have fun with the receptionist.
          - 2 - Check the closet.
          """);
          String recep3 = stdin.readLineSync();
          if (recep3 == '1'){
            print(refreshingSex);
          }else if (recep3 == '2'){
            print(bob);
          }
        }else if (recep2 == 'no'){
          print('Please leave the hotel and never come back  -- GAME OVER -- ');
        }
        //TODO: Get them back on the reception track
      //}else if (recep1 == 'no') {
        //RECEPTION PLEASE!!
      }
    }else if (userInput2 == '2'){
      map.currentRoom.nextRoom;
      print(toRoom);

      print("""
    What do you want to do?
    Choose a number:
    - 1 - Explore the room
    - 2 - Go to sleep 
    """);
      String userInput3 = stdin.readLineSync();
      if (userInput3 == '1'){
        print(room);
        String userInput4 = stdin.readLineSync();
        if (userInput4 == 'yes'){
          print('Do you have the key to the door, it is the same key as for the room?');
          String userInput5 = stdin.readLineSync();
          if (userInput5 == 'yes'){
            print(sexDungeon);
            print("""
            What do you want to do?
            - 1 - Leave the room.
            - 2 - Check the closet.
            """);
            String userInput6 = stdin.readLineSync();
            if (userInput6 == '1'){
              print(sleep);
            }else if (userInput6 == '2'){
              print(bob);
            }
          }else if (userInput5 == 'no'){
            print('Look for a key');
          }
        }
      }else if (userInput3 == '2'){
        print(sleep);
      }
    }else {
      print(leave);
    }
  } else if (userInput1 == 'no'){
    print(leave);
  }else{
    print('please answer the question');
  }


}


