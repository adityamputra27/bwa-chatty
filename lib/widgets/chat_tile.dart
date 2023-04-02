import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String imageURL;
  final String name;
  final String text;
  final String time;
  final bool unread;

  const ChatTile(
      {super.key,
      required this.imageURL,
      required this.name,
      required this.text,
      required this.time,
      required this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageURL,
            width: 55,
            height: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unread
                    ? subtitleTextStyle.copyWith(color: blackColor)
                    : subtitleTextStyle,
              ),
            ],
          ),
          const Spacer(),
          Text(
            time,
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
