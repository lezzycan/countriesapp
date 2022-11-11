import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLoading extends StatelessWidget {
  const AppLoading({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          strokeWidth: 8.0,
        ),
      );
    }
    return const CupertinoActivityIndicator(
      color: Colors.red,
    );
  }
}
