import 'package:equatable/equatable.dart';

///States for Search Module
///
class SearchState extends Equatable {
  @override
  List<Object> get props => [];
}

class LoadingSearchState extends SearchState {
  // Provide Loading Shimmer Widget state
}

class ErrorSearchState extends SearchState {
  // Provide Error Msg
  ErrorSearchState({this.errorMsg});

  @override
  List<Object> get props => [errorMsg];

  final errorMsg;
}

///Data for search State
///
class DataSearchState extends SearchState {
  // Data is ready

  DataSearchState(this.data);

  @override
  List<Object> get props => [data];

  //Categories list for full & Home Screen
  final List<dynamic> data;
}
