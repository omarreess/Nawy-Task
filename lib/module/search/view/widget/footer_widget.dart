import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///Page's Footer here contains static Widgets & Image for origin footer
///as there's no need for real footer for it now
///
class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 150.h,
          width: double.infinity,
          color: Color(int.parse('#1E4164'.replaceAll('#', '0xff'))),
          child: Stack(
            children: [
              //Dropdown menus

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButton(
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                          ),
                          items: [],
                          hint: Text(
                            "Areas               ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        DropdownButton(
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                          ),
                          items: [],
                          hint: Text(
                            "Latest\nDevelopers      ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DropdownButton(
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                          ),
                          items: [],
                          hint: Text(
                            "Latest\nCompounds        ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        DropdownButton(
                          underline: Container(
                            color: Colors.transparent,
                          ),
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.white,
                          ),
                          items: [],
                          hint: Text(
                            "Hot\nproperties           ",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              //Footer bar
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/footer-bar.png'),
              )
            ],
          ),
        ));
  }
}


/**
 1
DropdownButton(
                        underline: Container(
                          color: Colors.transparent,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                        ),
                        items: [],
                        hint: Text(
                          "Areas      ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),

 2
 DropdownButton(
                        underline: Container(
                          color: Colors.transparent,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                        ),
                        items: [],
                        hint: Text(
                          "Latest\nDevelopers      ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),

 3

 DropdownButton(
                        underline: Container(
                          color: Colors.transparent,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                        ),
                        items: [],
                        hint: Text("Latest\nCompounds      ",
                            style: TextStyle(color: Colors.white)),
                      ),

                      
 4

  DropdownButton(
                        underline: Container(
                          color: Colors.transparent,
                        ),
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.white,
                        ),
                        items: [],
                        hint: Text("Hot\nproperties      ",
                            style: TextStyle(color: Colors.white)),
                      ),
 */