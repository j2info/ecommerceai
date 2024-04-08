import 'package:flutter/material.dart';

void main() {
  runApp(ChatScreen());
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF33F5DE), // WhatsApp green
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent, // WhatsApp green
          title: SizedBox(
            height: 40.0, // Set the height of the SizedBox
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'How can I help you?',
                style: TextStyle(color: Colors.black12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        body: ChatBody(),
      ),
    );
  }
}

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            reverse: true, // to start from bottom like WhatsApp
            itemCount: 20, // replace with the actual number of messages
            itemBuilder: (BuildContext context, int index) {
              // Replace MessageBubble with your custom message bubble widget
              return MessageBubble(
                isMe: index % 2 == 0, // Just for demonstration, you can modify this
                message: 'This is message $index', // Replace with actual message
              );
            },
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type a message',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.send),
                onPressed: () {},
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MessageBubble extends StatelessWidget {
  final bool isMe;
  final String message;

  MessageBubble({required this.isMe, required this.message});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            gradient: isMe
                ? LinearGradient(
              colors: [Color(0xFFDCF8C6), Colors.green], // Gradient colors for the user's messages
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )
                : LinearGradient(
              colors: [Colors.grey[300]!, Colors.red], // Gradient colors for other party's messages
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              topLeft: isMe ? Radius.circular(20.0) : Radius.circular(0.0),
              topRight: isMe ? Radius.circular(0.0) : Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          child: Text(
            message,
            style: TextStyle(color: isMe ? Colors.black : Colors.white),
          ),
        ),
      ],
    );
  }
}

