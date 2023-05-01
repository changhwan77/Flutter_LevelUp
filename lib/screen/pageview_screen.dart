import 'package:flutter/material.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [1, 2, 3, 4, 5]
            .map(
              (number) => Image.asset(
                'assets/images/image$number.jpg',
                fit: BoxFit.cover,
              ),
            )
            .toList(),
      ),
    );
  }
}
