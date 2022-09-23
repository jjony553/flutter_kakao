import 'package:flutter/material.dart';
import 'package:flutter_kakaotalk/components/my_chat.dart';
import 'package:flutter_kakaotalk/components/other_chat.dart';
import 'package:flutter_kakaotalk/components/time_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({super.key});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Color(0xffb2c7da),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: _buildAppBar(context),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Column(
                        children: [
                          TimeLine(time: "2022년 1월 1일 금요일"),
                          OtherChat(
                            name: "홍길동",
                            text: "새해 복 많",
                            time: "오전 10:19",
                          ),
                          MyChat(
                            text: "네네 감사합니다.",
                            time: "오전 10:20",
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  color: Colors.red,
                )
              ],
            ),
          )),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: Text(
        '홍길동',
        style: Theme.of(context).textTheme.headline6,
      ),
      actions: [
        Icon(
          FontAwesomeIcons.search,
          size: 20,
        ),
        SizedBox(
          width: 25,
        ),
        Icon(
          FontAwesomeIcons.bars,
          size: 20,
        ),
        SizedBox(
          width: 25,
        )
      ],
    );
  }
}
