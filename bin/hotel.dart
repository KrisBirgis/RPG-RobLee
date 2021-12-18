import 'entrance.dart';
import 'reception.dart';
import 'restaurant.dart';
import 'room103.dart';
import 'sex_dungeon.dart';

class Rooms{
  String name;
  String description;
  List<Rooms> nextRoom = [];

  Rooms({this.name, this.description});

  void addNextRoom(Rooms room){
    if (nextRoom.contains(room)){
      nextRoom.add(room);
      room.addNextRoom(this);
    }
  }

  void describeRooms(){
    print(description);
    int option = 1;
    for (Rooms rooms in nextRoom){
      print('$option ${rooms.name}');
    }
  }
}

class Map {

  Rooms startingRoom;

  Map(){
    Rooms entrance = Entrance(
        description: 'You are in a bright room with beautiful flowers and everything '
            'have changed since the last time you visited. '
            'You can see a reception in front of you'
    );
    Rooms reception = Reception(
        description: '"Good evening Mr. Lee, how can we help you today?" '
            'The receptionist seems to know you, but you don´t recall to have met her before.'
    );
    Rooms restaurant = Restaurant(
        description: 'You are in a bright restaurant with a view to a field out in the nowhere. '
            'You are led to a table by the window. A beautiful waiter comes to the table '
            'and asks you if you want something to drink.'
    );
    Rooms room103 = Room103(
        description: 'You get to the room, it is downstairs and has an extra door on the wall, the door is closed and'
            'has a special kind of lock on it.'
    );
    Rooms sexDungeon = SexDungeon(
        description: 'The room is dark and you start looking around. There are no windows that you can see. '
            'The room has a big bed with 4 pillars that reach up to the ceiling at each corner of the bed'
            'At the end of the bed, there is a cage, like a cage for a large dog, but no dog like things in there.'
            'At the other side of the room there is a closet with the same kind of lock as the door to this room had.'
    );
    entrance.addNextRoom(reception);
    reception.addNextRoom(restaurant);
    reception.addNextRoom(entrance);
    restaurant.addNextRoom(reception);
    reception.addNextRoom(room103);
    room103.addNextRoom(sexDungeon);
    sexDungeon.addNextRoom(room103);
    startingRoom = entrance;
  }
}

class User {
  Rooms currentRoom;
}




