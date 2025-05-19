import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutExercise(),
    );
  }
}


class LayoutExercise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Layout Exercise")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Row with MainAxisAlignment.start", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Container(
              height: 100,
              color: Colors.amber.withValues(alpha :0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  coloredBox("Box 1"),
                  coloredBox("Box 2"),
                  coloredBox("Box 3"),
                ],
              ),
            ),
            SizedBox(height: 16),
            
            Text("Row with MainAxisAlignment.spaceEvenly", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Container(
              height: 100,
              color: Colors.blue.withValues(alpha :0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  coloredBox("Box 1"),
                  coloredBox("Box 2"),
                  coloredBox("Box 3"),
                ],
              ),
            ),
            SizedBox(height: 16),
            
            Text("Row with MainAxisAlignment.end and CrossAxisAlignment.start", 
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Container(
              height: 100,
              color: Colors.green.withValues(alpha :0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  coloredBox("Box 1", height: 30),
                  coloredBox("Box 2", height: 50),
                  coloredBox("Box 3", height: 70),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  Widget coloredBox(String text, {double height = 60}) {
    return Container(
      width: 80,
      height: height,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text(text, style: TextStyle(color: Colors.white))),
    );
  }
}
