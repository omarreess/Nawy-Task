import 'package:flutter/material.dart';

///Appbar here contains Image for origin appbar
///as there's no need for real appbar now
///
PreferredSizeWidget appbarWidget() => AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Image.asset("assets/nawy_appbar.png"),
    );
