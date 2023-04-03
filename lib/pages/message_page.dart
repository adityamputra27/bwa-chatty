import 'package:bwa_chatty/theme.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget receiverBubble(
        {required final String imageURL,
        required final String text,
        required final String time}) {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              imageURL,
              width: 40,
            ),
            const SizedBox(
              height: 12,
              width: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: const BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff505C6B),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff505C6B),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderBubble(
        {required final String imageURL,
        required final String text,
        required final String time}) {
      return Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              decoration: const BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xff505C6B),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      color: Color(0xff505C6B),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Image.asset(
              imageURL,
              width: 40,
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      );
    }

    Widget header() {
      return Container(
        width: double.infinity,
        height: 115,
        padding: const EdgeInsets.only(bottom: 30, right: 30, top: 30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: whiteColor,
                elevation: 0.0,
                padding: EdgeInsets.zero,
                minimumSize: Size.zero,
              ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: blackColor,
              ),
            ),
            Image.asset(
              'assets/images/ts.png',
              width: 45,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Typescript Indonesia',
                  style: titleTextStyle,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  '14.209 members',
                  style: subtitleTextStyle,
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(10),
                  backgroundColor: greenColor),
              onPressed: () {},
              child: const Icon(
                Icons.call,
                size: 25,
              ),
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              receiverBubble(
                imageURL: 'assets/images/2.png',
                text: 'How are you guys?',
                time: '08:35',
              ),
              receiverBubble(
                imageURL: 'assets/images/3.png',
                text: 'How are you guys?',
                time: '08:35',
              ),
              senderBubble(
                imageURL: 'assets/images/4.png',
                text: 'How are you guys?',
                time: '08:35',
              ),
              receiverBubble(
                imageURL: 'assets/images/2.png',
                text: 'How are you guys?',
                time: '08:35',
              ),
              receiverBubble(
                imageURL: 'assets/images/3.png',
                text: 'How are you guys?',
                time: '08:35',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(75),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Type message...',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 16,
                color: Color(0xff999999),
              ),
            ),
            Icon(
              Icons.send,
              size: 35,
              color: greenColor,
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffF8FAFC),
      floatingActionButton: chatInput(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}
