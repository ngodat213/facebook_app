import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/models.dart';

class CreatePostContainer extends StatelessWidget {
  const CreatePostContainer({
    Key? key,
    required this.currentUser,
  }) : super(key: key);

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(12, 8, 8, 0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.0,
                backgroundColor: Colors.grey[200],
                backgroundImage:
                    CachedNetworkImageProvider(currentUser.imageUrl),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 2, 0, 2),
                  height: 35,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Bạn đang nghĩ gì',
                      hintStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () => print('Picture'),
                icon: Icon(
                  Icons.photo_library,
                  color: Colors.green,
                ),
              )
            ],
          ),
          const Divider(height: 10.0, thickness: 0.5),
          SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton.icon(
                  onPressed: () => print('Live stream'),
                  icon: Icon(
                    Icons.videocam,
                    color: Colors.red[600],
                  ),
                  label: Text(
                    'Phát trực tiếp',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () => print(''),
                  icon: Icon(
                    Icons.photo_library,
                    color: Colors.green,
                  ),
                  label: Text(
                    'Ảnh',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () => print(''),
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.purpleAccent,
                  ),
                  label: Text(
                    'Phòng họp',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
