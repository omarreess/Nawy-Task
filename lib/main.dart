import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nawy/model/networking/client/search_client.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'module/search/view/page/search_page.dart';
import 'module/search/view_model/search_bloc.dart';
import 'module/search/view_model/search_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ///Screen Utill plugin for Responsive UI across Diffrent Screens
    return ScreenUtilInit(
        designSize: Size(360, 690),
        builder: () => MultiRepositoryProvider(
              providers: [
                RepositoryProvider<SearchBloc>(
                    create: (_) => SearchBloc(LoadingSearchState())),
              ],
              child: MaterialApp(
                title: 'Nawy',
                builder: (context, widget) {
                  return MediaQuery(
                    data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                    child: widget!,
                  );
                },
                home: SearchPage(),
              ),
            ));
  }
}
 
 

//Mocking Network
/**
 Client().pricesClientService().then((value) {
    print('ne $value}');
  }).catchError((error) {
    print('ne $error}');
  });

    Client()
      .searchClientService(
          minPrice: 0, maxPrice: 400000000, compoundId: 542, areaId: 9)
      .then((value) {
    print('neee $value}');
  }).catchError((error) {
    print('neee $error}');
  });

 */