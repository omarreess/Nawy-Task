import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnitWidget extends StatelessWidget {
  const UnitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
        Radius.circular(20),
      )),
      child: Container(
        height: 250.h,
        width: 330.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        child: Column(
          children: [
            Container(
              height: 120.h,
              width: 330.w,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: 330.w,
                      child: Image.asset(
                        'assets/unit-img.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 30.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topRight: Radius.circular(7)),
                          color: Color(
                                  int.parse('#7DCBC1'.replaceAll('#', '0xff')))
                              .withOpacity(0.9)),
                      child: Text(''),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 30.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(7)),
                          color: Color(
                                  int.parse('#E5E5E5'.replaceAll('#', '0xff')))
                              .withOpacity(0.6)),
                      child: Text(''),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Appartment",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo[800]),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      //Compund
                      Text(
                        "Mountain View - Chillout park",
                        style:
                            TextStyle(fontSize: 15, color: Colors.indigo[800]),
                      ),
                      //Area
                      Text(
                        "6th October, Egypt",
                        style:
                            TextStyle(fontSize: 15, color: Colors.indigo[800]),
                      ),
                      const SizedBox(
                        height: 8,
                      ),

                      //Delivery
                      Text(
                        "9 Years payment Delivery in 2025",
                        style:
                            TextStyle(fontSize: 15, color: Colors.indigo[800]),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.all(20),
                    alignment: Alignment.center,
                    child: Image.asset('assets/dev-logo.png'))
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 6.h),
              decoration: BoxDecoration(
                  color: Color(int.parse('#015C9A'.replaceAll('#', '0xff'))),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child: Row(
                children: [
                  TextButton.icon(
                    icon: Icon(Icons.message, color: Colors.white), //icon image
                    label: Text('Message',
                        style: TextStyle(
                            color: Colors.white)), //text to show in button
                    onPressed: () {},
                  ),
                  Container(
                    width: 5,
                    color: Colors.white,
                  ),
                  TextButton.icon(
                    icon: Icon(
                      Icons.call,
                      color: Colors.white,
                    ), //icon image
                    label: Text('Call us',
                        style: TextStyle(
                            color: Colors.white)), //text to show in button
                    onPressed: () {},
                  ),
                  Container(
                    width: 5,
                    color: Colors.white,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset('assets/whatsapp.png', color: Colors.white),
                      Container(
                        width: 7.w,
                        color: Colors.white,
                      ),
                      Text(
                        "Whatsapp",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      )
                    ],
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            )
          ],
        ),
      ),
    );
  }
}
