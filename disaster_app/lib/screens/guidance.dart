import 'package:flutter/material.dart';

class Guidance extends StatelessWidget {
  final tips = [
    "Move to higher ground",
    "Avoid flooded areas",
    "Carry emergency kit",
    "Turn off electricity",
    "Stay updated via alerts"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Safety Guidance")),
      body: ListView.builder(
        padding: EdgeInsets.all(16),
        itemCount: tips.length,
        itemBuilder: (_, i) => Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.check, color: Colors.white),
            ),
            title: Text(tips[i]),
          ),
        ),
      ),
    );
  }
}
