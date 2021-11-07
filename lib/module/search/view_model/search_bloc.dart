import 'package:bloc/bloc.dart';
import 'package:nawy/model/pojo/area.dart';
import 'package:nawy/model/pojo/compound.dart';
import 'package:nawy/model/repository/search_repo.dart';
import 'search_event.dart';
import 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  List<int>? priceList;
  List<Area>? areaList;
  List<Compound>? compoundsList;
  SearchRepo searchRepo = SearchRepo();

  SearchBloc(SearchState initialState) : super(initialState);

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    if (event is FetchInitDataEvent) {
      //Injecting Lists with data from remote source

      searchRepo.fetchAreaData().then((list) {
        areaList = list;
      });
      searchRepo.fetchPriceData().then((list) {
        priceList = list;
      });
      searchRepo.fetchCompoundsData().then((list) {
        compoundsList = list;
      });
    }

    ///CityGuide Events Screen States
    if (event is FetchSearchDataEvent) {
      yield DataSearchState([]);
    }
  }
}
