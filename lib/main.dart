import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QUIMICAPP',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 54, 54, 54),


        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(right: 8),
                child: Icon(Icons.book_rounded, color: Colors.white,)
                ),
              Text("Unidades"),
            ],
          ),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          backgroundColor: const Color.fromARGB(255, 138, 138, 138),
          centerTitle: true,
        ),

        body: GridView.builder(
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, IndexError) => Container(
            color: Colors.deepPurple[400],
            margin: EdgeInsets.all(8),
            ),
        )
      ),
    );
  }
}
