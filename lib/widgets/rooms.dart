import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../models/models.dart';
import 'widgets.dart';

class Rooms extends StatelessWidget {
  const Rooms({
    Key? key,
    required this.onlineUsers,
  }) : super(key: key);

  final List<User> onlineUsers;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      // color: Colors.blueAccent,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 4.0),
        scrollDirection: Axis.horizontal,
        itemCount: 1 + onlineUsers.length,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: _CreateRoomButtom(),
            );
          }
          final User user = onlineUsers[index - 1];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: ProfileAvatar(imageUrl: user.imageUrl, isActive: true),
          );
        },
      ),
    );
  }
}

class _CreateRoomButtom extends StatelessWidget {
  const _CreateRoomButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () => print('Rooms'),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      color: Colors.white,
      borderSide: BorderSide(width: 3.0, color: Colors.blueAccent),
      textColor: Palette.facebookBlue,
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (rect) =>
                Palette.createRoomGradient.createShader(rect),
            child: Icon(
              Icons.video_call,
              size: 35.0,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 4.0),
          Text('Tạo\nphòng')
        ],
      ),
    );
  }
}
