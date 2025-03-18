import 'package:flutter/material.dart';
import 'package:gemini_gpt/message.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<Message> _message = [
    Message(text: 'hi', isUser: true),
    Message(text: 'hello, what\'s up?', isUser: false),
    Message(text: 'Great and you ?', isUser: false),
    Message(text: 'I\'m excellent', isUser: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/gpt-robot.png'),
                SizedBox(width: 10),
                Text('Gemini GPT')
              ],
            ),
            Image.asset(
              'assets/volume-high.png',
              color: Colors.blue[800],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _message.length,
              itemBuilder: (context, index) {
                // loop on all this in _message list
                final message = _message[index];
                return ListTile(
                  title: Align(
                    alignment: message.isUser
                        ? Alignment.centerRight
                        : Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: message.isUser ? Colors.blue : Colors.grey[300],
                        borderRadius: message.isUser
                            ? BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              )
                            : BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                      ),
                      child: Text(
                        message.text,
                        style: TextStyle(
                          color: message.isUser ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 16, top: 16, left: 16, right: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withValues(
                      alpha: 0.5,
                    ),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                          hintText: 'write your message',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16)),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    child: Image.asset('assets/send.png'),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
