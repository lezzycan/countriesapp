// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:hng_stage_3_task/countries/view_models/theme_view_model.dart';
// import 'package:provider/provider.dart';

// class ChangeThemeButtonWidget extends StatelessWidget {
//   const ChangeThemeButtonWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = context.watch<ThemeProvider>();
//     if (themeProvider.isDarkMode) {
//       final provider = context.read<ThemeProvider>();
//       InkWell(onTap: () {
//         provider.toggle(isOn);
//       }, child: Icon(Icons.mode_night_sharp));
//     }
//     return const Icon(Icons.touch_app_rounded);
//   }
// }
