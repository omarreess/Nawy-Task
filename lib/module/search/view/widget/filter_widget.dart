import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownButton(
        underline: Container(
          color: Colors.transparent,
        ),
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Colors.black,
        ),
        items: [],
        hint: TextButton.icon(
          onPressed: () {},
          icon: Icon(Icons.filter_alt, color: Colors.indigo[900]),
          label: Text(
            "Filter",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
