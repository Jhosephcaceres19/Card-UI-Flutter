import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext contxt) {
    return MaterialApp(
      home: const PagePrincipal(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PagePrincipal extends StatelessWidget {
  const PagePrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("PROJECT UI"),
        backgroundColor: Colors.blue,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: [ShapeSection()]),
      ),
    );
  }
}

class ShapeSection extends StatelessWidget {
  const ShapeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 100, height: 100, color: Colors.blue),
        SizedBox(height: 20),

        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
        ),

        SizedBox(height: 20),

        Container(
          width: 200,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        SizedBox(height: 20),
        Rectangulo(),
      ],
    );
  }
}

class Rectangulo extends StatelessWidget {
  const Rectangulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 160,
          decoration: BoxDecoration(
            color: Colors.amberAccent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black38, width: 9),
            boxShadow: [
              BoxShadow(
                color: Colors.green,
                blurRadius: 18,
                offset: Offset(2, 4),
              ),
            ],
          ),
          child: Center(child: ButtonTheme(child: Text("esto es un boton"))),
        ),
      ],
    );
  }
}
