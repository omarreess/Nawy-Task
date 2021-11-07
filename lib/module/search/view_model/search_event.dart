///Events for Search Module
///

abstract class SearchEvent {}

///Get initialize data from Apis (prices , compounds , areas ...)
///
class FetchInitDataEvent extends SearchEvent {
  FetchInitDataEvent();
}

///Get Search Data from Search Api
///
class FetchSearchDataEvent extends SearchEvent {
  FetchSearchDataEvent();
}
