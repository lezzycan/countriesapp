// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hng_stage_3_task/components/helper_tools.dart';
// // ignore: unused_import
// import 'package:hng_stage_3_task/components/search_input_panel.dart';
// import 'package:hng_stage_3_task/utils/constants.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var theme = ThemeData();
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Explore',
//             style: TextStyle(
//                 color: theme == ThemeData.dark()
//                     ? Constants.scaffoldBackgroundlightTheme
//                     : Constants.scaffoldBackgrounddarkTheme,
//                 fontSize: 30.sp,
//                 fontWeight: FontWeight.w600),
//           ),
//           actions: [
//             Icon(
//               Icons.switch_access_shortcut,
//               color: theme == ThemeData.dark()
//                   ? Constants.scaffoldBackgroundlightTheme
//                   : Constants.scaffoldBackgrounddarkTheme,
//             )
//           ],
//         ),
//         body: _ui(context));
//   }

//   _ui(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(18.0),
//       child: ListView(
//         children: [
//           addVerticalSpace(24.06.h),
//           // const   SearchInputPanel(padding: EdgeInsets.symmetric(horizontal: 24.0)),
//         ],
//       ),
//     );
//   }
// }
