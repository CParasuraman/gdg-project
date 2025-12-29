import 'package:flutter/material.dart';

class OfflinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Offline Emergency Info")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          offlineTile("Emergency Numbers"),
          offlineTile("First Aid Steps"),
          offlineTile("Disaster Do's and Don'ts"),
          offlineTile("Nearest Shelter Info"),
        ],
      ),
    );
  }

  Widget offlineTile(String title) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.storage),
        title: Text(title),
        subtitle: Text("Available offline"),
      ),
    );
  }
}
