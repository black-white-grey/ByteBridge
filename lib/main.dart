import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ByteBridgeApp());
}

class ByteBridgeApp extends StatelessWidget {
  const ByteBridgeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21), // Dark Navy Aesthetic
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("ByteBridge", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.cyanAccent)),
            const SizedBox(height: 10),
            const Text("Share data. Stay connected.", style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 50),
            
            // PROVIDER BUTTON
            GestureDetector(
              onTap: () { /* We will add navigation to Provider Screen here */ },
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.cyanAccent.withOpacity(0.5)),
                ),
                child: const Column(
                  children: [
                    Icon(Icons.wifi_tethering, size: 40, color: Colors.cyanAccent),
                    SizedBox(height: 10),
                    Text("Provide Data", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                    Text("Let others use your network", style: TextStyle(fontSize: 12, color: Colors.white54)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // BORROWER BUTTON
            GestureDetector(
              onTap: () { /* We will add navigation to Borrower Screen here */ },
              child: Container(
                width: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.purpleAccent.withOpacity(0.5)),
                ),
                child: const Column(
                  children: [
                    Icon(Icons.rss_feed, size: 40, color: Colors.purpleAccent),
                    SizedBox(height: 10),
                    Text("Borrow Data", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                    Text("Connect to a ByteBridge node", style: TextStyle(fontSize: 12, color: Colors.white54)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}