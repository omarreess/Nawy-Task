import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nawy/module/search/view/widget/appbar_widget.dart';
import 'package:nawy/module/search/view/widget/filter_widget.dart';
import 'package:nawy/module/search/view/widget/footer_widget.dart';
import 'package:nawy/module/search/view/widget/search_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nawy/module/search/view/widget/unit_widget.dart';
import 'package:nawy/module/search/view_model/search_bloc.dart';
import 'package:nawy/module/search/view_model/search_event.dart';
import 'package:nawy/module/search/view_model/search_state.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //initiliaze Config Lists with initliazie event every time per rebuild
    BlocProvider.of<SearchBloc>(context, listen: false)
        .add(FetchInitDataEvent());

    return Scaffold(
      appBar: appbarWidget(),
      backgroundColor: Color(int.parse('#E5E5E5'.replaceAll('#', '0xff'))),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          //Filter + Search Widgets
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 5.w),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilterWidget(),
                    const SizedBox(
                      width: 15,
                      height: 0,
                    ),
                    SearchBarWidget()
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //Sort by Widget
              Container(
                margin: EdgeInsets.only(left: 15.w, right: 5.w),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Properties",
                      style: TextStyle(fontSize: 12, color: Colors.indigo[800]),
                    ),
                    Text("  |  "),
                    Text(
                      "Compounds",
                      style: TextStyle(fontSize: 12, color: Colors.indigo[800]),
                    ),
                    SizedBox(
                      width: 60.w,
                      height: 0,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Compare",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.orange[900]!),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                      height: 0,
                    ),
                    Container(
                      height: 35.h,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
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
                        hint: Text(
                          "Sort by",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              //List of Units (Appartments)
              //
              BlocBuilder<SearchBloc, SearchState>(
                builder: (context, searchState) {
                  if (searchState is LoadingSearchState) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.indigo[800],
                      ),
                    );
                  }
                  if (searchState is ErrorSearchState) {
                    return Center(
                      child: Text("Something wrong"),
                    );
                  }
                  return Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          Divider(height: 2.5.h, color: Colors.transparent),
                      itemCount: 5,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.all(5),
                        child: UnitWidget(),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 150.h,
              )
            ],
          ),

          //footer
          FooterWidget()
        ],
      ),
    );
  }
}
