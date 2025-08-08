// screens/messages_page.dart
import 'package:flutter/material.dart';
import '../data/messages.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('21 Birthday Messages'),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: birthdayMessages.length,
        itemBuilder: (context, index) {
          final msg = birthdayMessages[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageDetailPage(message: msg),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 3,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(msg.background),
                  radius: 25,
                ),
                title: Text(msg.author, style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(
                  msg.text.length > 32 ? "${msg.text.substring(0, 32)}..." : msg.text,
                  maxLines: 1,
                ),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Detailed message page with background
class MessageDetailPage extends StatelessWidget {
  final BirthdayMessage message;

  const MessageDetailPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            message.background,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.pink.withOpacity(0.2),
          ),
          SafeArea(
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  iconTheme: IconThemeData(color: Colors.white),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.85),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.pink, width: 2),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            message.author,
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[700],
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            message.text,
                            style: TextStyle(fontSize: 18),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
