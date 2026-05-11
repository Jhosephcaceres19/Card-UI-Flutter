import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "https://www.copahost.com/blog/wp-content/uploads/2019/07/imgsize2.png",
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Parrot es un sistema operativo para hacking y ciberseguridad en lo cual es recomendado usar",
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text("mas detalle")),
          ],
        ),
      ),
    );
  }
}
