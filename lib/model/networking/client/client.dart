import 'dart:convert';
import 'package:nawy/model/networking/services/areas_service.dart';
import 'package:nawy/model/networking/services/compounds_service.dart';
import 'package:nawy/model/networking/services/prices_service.dart';
import 'package:nawy/networking/services/search_service.dart';

/// Client Services to be used directly for networking requests as an Endpoint for client use
/// @param parameters of Network request
/// @return response body in  List<Map<String,dynamic>> or Map<String,dynamic>
///

class Client {
  ///Area Client Service
  ///
  Future<List<dynamic>> areasClientService() async {
    late List<dynamic> responseMap;

    await areasService().then((response) {
      responseMap = json.decode(response!.body);
    });
    return responseMap;
  }

  ///Prices Client Service
  ///
  Future<Map<String, dynamic>> pricesClientService() async {
    late Map<String, dynamic> responseMap;

    await pricesService().then((response) {
      responseMap = json.decode(response!.body);
    });
    return responseMap;
  }

  ///Compounds Client Service
  ///
  Future<List<dynamic>> compoundsClientService() async {
    late List<dynamic> responseMap;

    await compoundsService().then((response) {
      responseMap = json.decode(response!.body);
    });
    return responseMap;
  }

  ///Search Client Service
  ///
  Future<Map<String, dynamic>> searchClientService({
    required int minPrice,
    required int maxPrice,
    required int compoundId,
    required int areaId,
  }) async {
    late Map<String, dynamic> responseMap;

    await searchService(
            minPrice: minPrice,
            maxPrice: maxPrice,
            compoundId: compoundId,
            areaId: areaId)
        .then((response) {
      responseMap = json.decode(response!.body);
    });
    return responseMap;
  }
}
