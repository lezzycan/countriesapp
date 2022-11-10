// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:hng_stage_3_task/components/helper_tools.dart';
// import '../utils/constants.dart';

// class SearchInputPanel extends StatelessWidget {
//   const SearchInputPanel({Key? key, required this.padding}) : super(key: key);
//   final EdgeInsetsGeometry padding;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: padding,
//       child: Container(
//         height: 50.h,
//         color: Colors.grey[200],
        
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             addHorizontalSpace(16.w),
//             const Icon(Icons.search),
//               addHorizontalSpace(120.w),
//             const Expanded(
//               flex: 2,
//               child: TextField(
//                 style: TextStyle(
//                     //color: Constants.kWhiteColor.withOpacity(0.6),
//                     fontSize: 17,
//                     letterSpacing: -0.4),
//                 decoration: InputDecoration(
//                   // enabledBorder: OutlineInputBorder(
//                   //   borderSide: BorderSide(width: 1.0),
//                   // ),
//                   hintText: 'Search Country',
//                   border: InputBorder.none,
//                   // filled: true,
//                   hintStyle: TextStyle(
//                       //   color: Constants.kWhiteColor.withOpacity(0.6),
//                       fontSize: 17,
//                       letterSpacing: -0.41),
//                 ),
//               ),
//             ),
//           // Opacity(opacity: 0, child: Text('kfkf')),
//           ],
//         ),
//       ),
//       //  child: Card(
//       //   color: Constants.kGreyColor.withOpacity(0.5),
//       //   shape: RoundedRectangleBorder(
//       //     borderRadius: BorderRadius.circular(20) ),
//       //   child: Row(
//       //     children: [
//       //       const SizedBox(width: 8.0,),
//       //       SvgPicture.asset(Constants.kIconSearch),
//       //       const SizedBox(width: 8.0,),
//       //       Expanded(child: TextField(
//       //         style: TextStyle(
//       //           fontSize: 17,
//       //           color: Constants.kWhiteColor.withOpacity(0.5),
//       //           letterSpacing: -0.41
//       //         ),
//       //         decoration: InputDecoration(
//       //           hintText: 'Search',
//       //           hintStyle: TextStyle(
//       //             color: Constants.kWhiteColor.withOpacity(0.5),
//       //             fontSize: 17,
//       //             letterSpacing: -0.41,
//       //           ),
//       //         ),
//       //       ),),
//       //       const SizedBox(
//       //         width: 8,
//       //       ),
//       //       SvgPicture.asset(Constants.kIconMic),
//       //       const SizedBox(width: 8,)
//       //     ],
//       //   ),
//       //  ),
//     );
//   }
// }
