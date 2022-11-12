import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApiError extends StatelessWidget {
  const ApiError({super.key, required this.errortxt});
  final String errortxt;
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: errortxt.isNotEmpty,
      child: Center(
        child: Text(
          errortxt,
          style: TextStyle(fontSize: 18.sp),
        ),
      ),
    );
  }
}
