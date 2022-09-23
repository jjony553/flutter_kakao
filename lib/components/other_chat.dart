import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk/models/user.dart';

class OtherChat extends StatelessWidget {
  final String name;
  final String text;
  final String time;
  const OtherChat(
      {super.key, required this.name, required this.text, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(friends[0].backgroundImage),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name),
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Colors.white,
                  ),
                  child: Text(text),
                )
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            time,
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
