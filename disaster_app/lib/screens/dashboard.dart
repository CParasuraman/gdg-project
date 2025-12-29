import 'package:flutter/material.dart';
import 'guidance.dart';
import 'map.dart';
import 'sos.dart';
import 'chatbot.dart';
import 'offline.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Gradient Header
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.deepOrange],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "AI Disaster Alert",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "⚠ FLOOD • HIGH RISK",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20),

            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                padding: EdgeInsets.all(16),
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  featureCard(context, "Guidance", Icons.health_and_safety, Guidance()),
                  featureCard(context, "Evacuation Map", Icons.map, MapPage()),
                  featureCard(context, "AI Chatbot", Icons.smart_toy, ChatbotPage()),
                  featureCard(context, "Offline Info", Icons.offline_bolt, OfflinePage()),
                  featureCard(context, "SOS", Icons.sos, SOSPage(), danger: true),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget featureCard(BuildContext context, String title, IconData icon, Widget page,
      {bool danger = false}) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
      child: Container(
        decoration: BoxDecoration(
          color: danger ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 8),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: danger ? Colors.white : Colors.red),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: danger ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
