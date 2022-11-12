import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
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
      child: FancyShimmerImage(
        imageUrl: image,
        boxFit: BoxFit.cover,
        errorWidget: Icon(Icons.map),
        shimmerDuration: Duration(seconds: 1),
      ),
      // decoration:
      //     BoxDecoration(
      //       image: DecorationImage(
      //         image: NetworkImage(
      //           image),
      //           fit: BoxFit.cover,
      //           ),),
    );
  }
}
