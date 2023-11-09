import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String image;
  CustomContainer({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.deepPurple.shade200,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        ),
      ),
    );
  }
}
