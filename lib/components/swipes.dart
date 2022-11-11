import 'package:flutter/material.dart';

class Swipes extends StatelessWidget {
  const Swipes({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      width: double.infinity,
      decoration:
          BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                image),
                fit: BoxFit.cover,
                ),),
    );
  }
}
