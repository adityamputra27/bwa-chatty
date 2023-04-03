import 'package:bwa_chatty/pages/message_page.dart';
import 'package:bwa_chatty/theme.dart';
import 'package:bwa_chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MessagePage()),
          );
        },
        backgroundColor: greenColor,
        child: const Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/1.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Aditya Muhamad Putra P.',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(color: lightBlueColor, fontSize: 16),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      const ChatTile(
                        imageURL: 'assets/images/2.png',
                        name: 'Siti Maimunah',
                        text: 'Sorry, you`re not my ty...',
                        time: 'Now',
                        unread: true,
                      ),
                      const ChatTile(
                        imageURL: 'assets/images/3.png',
                        name: 'Inda Melinda',
                        text: 'I saw it clearly and mig...',
                        time: '12:30',
                        unread: false,
                      ),
                      const ChatTile(
                        imageURL: 'assets/images/4.png',
                        name: 'Marcus Rashford',
                        text: 'A lonely road, crossed another ...',
                        time: '11:39',
                        unread: false,
                      ),
                      const ChatTile(
                        imageURL: 'assets/images/2.png',
                        name: 'Harry Maguire',
                        text: 'Sorry, you`re not my ty...',
                        time: '10:21',
                        unread: true,
                      ),
                      const ChatTile(
                        imageURL: 'assets/images/3.png',
                        name: 'Deni Herdiana',
                        text: 'A lonely road, crossed another ...',
                        time: '09:25',
                        unread: false,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      const ChatTile(
                        imageURL: 'assets/images/js.png',
                        name: 'Javascript Indonesia',
                        text: 'Why does everyone ca...',
                        time: '10:11',
                        unread: true,
                      ),
                      const ChatTile(
                        imageURL: 'assets/images/ts.png',
                        name: 'Typescript Indonesia',
                        text: 'Here here we can go...',
                        time: '09:58',
                        unread: false,
                      ),
                      const ChatTile(
                        imageURL: 'assets/images/ci.png',
                        name: 'Codeigniter Indonesia',
                        text: 'The car which does not...',
                        time: '09:26',
                        unread: true,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
