import 'package:fazebook/models/models.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;
  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: _CreateRoomButton(),
            );
          }
          return Container(
            margin: const EdgeInsets.all(2),
            height: 20,
            width: 20,
            color: Colors.amber,
          );
        },
      ),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  const _CreateRoomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        shape: const StadiumBorder(),
        side: const BorderSide(width: 3, color: Colors.lightBlueAccent),
      ),
      onPressed: () => print('Create Room'),
      child: Container(),
    );
  }
}


//  OutlineButton(
//       onPressed: () => print('Create Room'),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(20)
//       ),
//     );
