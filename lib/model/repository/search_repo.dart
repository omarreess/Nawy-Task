import 'package:http/http.dart';
import 'package:nawy/model/networking/client/search_client.dart';
import 'package:nawy/model/pojo/area.dart';
import 'package:nawy/model/pojo/compound.dart';

///Repository Layer for calling Remote Network Requests
///bringing its data and handling them in a clean way
///
class SearchRepo {
  SearchClient searchClient = SearchClient();
  Future<List<Area>> fetchAreaData() async {
    List<Area> areaList = List.empty(growable: true);

    await searchClient.areasClientService().then((responseList) {
      responseList.forEach((map) {
        areaList.add(Area(id: map['id'], name: map['name'].toString()));
      });
    });
    return areaList;
  }

  Future<List<int>> fetchPriceData() async {
    List<int> priceList = List.empty(growable: true);

    await searchClient.pricesClientService().then((responseMap) {
      (responseMap['price_list'] as List).forEach((element) {
        priceList.add(element);
      });
    });

    return priceList;
  }

  Future<List<Compound>> fetchCompoundsData() async {
    List<Compound> compoundsList = List.empty(growable: true);

    await searchClient.compoundsClientService().then((responseList) {
      responseList.forEach((map) {
        compoundsList.add(Compound(
            id: map['id'],
            name: map['name'].toString(),
            areaId: map['area_id']));
      });
    });
    return compoundsList;
  }
}
