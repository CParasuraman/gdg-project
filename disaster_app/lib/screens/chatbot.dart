import 'package:flutter/material.dart';

class ChatbotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AI Assistant")),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(16),
              children: [
                botBubble("How can I stay safe?"),
                userBubble("What should I do now?"),
                botBubble("Move to higher ground and avoid water areas."),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Ask AI assistant...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: Icon(Icons.send),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget botBubble(String text) => Align(
        alignment: Alignment.centerLeft,
        child: bubble(text, Colors.grey[300]!, Colors.black),
      );

  Widget userBubble(String text) => Align(
        alignment: Alignment.centerRight,
        child: bubble(text, Colors.red, Colors.white),
      );

  Widget bubble(String text, Color bg, Color color) => Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(text, style: TextStyle(color: color)),
      );
}
