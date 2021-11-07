import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: Container(
        color: Colors.transparent,
      ),
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: Colors.black,
      ),
      items: [],
      hint: Text(
        "Filter",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
