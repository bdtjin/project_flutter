import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: StorePage());
  }
}

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // text or image -> 추가할 내용 작성
            SizedBox(
              height: 70,
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Women',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text('Kids', style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text(
                      'Shose',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text('Bag', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Expanded(child: Image.asset('assets/bag.jpg', fit: BoxFit.cover)),
            Expanded(child: Image.asset('assets/shoes.jpg', fit: BoxFit.cover)),
          ],
        ),
      ),
    );
  }
}
