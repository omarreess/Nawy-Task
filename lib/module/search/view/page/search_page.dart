import 'package:flutter/material.dart';
import 'package:nawy/module/search/view/widget/appbar_widget.dart';
import 'package:nawy/module/search/view/widget/footer_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(),
      backgroundColor: Color(int.parse('#E5E5E5'.replaceAll('#', '0xff'))),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          //body
          Container(
            width: double.infinity,
          ),
          //footer
          FooterWidget()
        ],
      ),
    );
  }
}
