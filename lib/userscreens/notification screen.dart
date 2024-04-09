import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Text('Notifications'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return NotificationCard(
              title: 'Your product is ready to be delivered',
              timeAgo: '4 days ago',
              hasUnread: true,
              description: 'This is a description for the notification.Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
            );
          },
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final String title;
  final String timeAgo;
  final bool hasUnread;
  final String description;

  NotificationCard({
    required this.title,
    required this.timeAgo,
    required this.hasUnread,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 4.0),
            Row(
              children: [
                Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.only(top: 4.0, right: 8.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: hasUnread ? Colors.red : Colors.transparent,
                  ),
                ),
                Text(
                  timeAgo,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(height: 12.0),
            Row(
              children: [
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // Color representing image position
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Icon(Icons.image, color: Colors.grey[600]),
                ),
                SizedBox(width: 13.0),
                Expanded(
                  child: Text(
                    description,
                    style: TextStyle(fontSize: 14.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    home: NotificationScreen(),
  ));
}
