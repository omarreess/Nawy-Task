import 'package:bloc/bloc.dart';
import 'search_event.dart';
import 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(SearchState initialState) : super(initialState);

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is FetchInitDataEvent) {
      yield DataSearchState([]);
    }

    ///CityGuide Events Screen States
    if (event is FetchSearchDataEvent) {
      yield DataSearchState([]);
    }
  }
}
