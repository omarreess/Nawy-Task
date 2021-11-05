import 'package:http/http.dart' as http;
import 'package:nawy/networking/endpoints/endpoints_paths.dart';
import 'shared/http_services.dart';

/// Search Service to be used by client
/// @param parameters of Network request in Map<String , dynamic>
/// @return response
///

Future<http.Response?> searchService({
  required String minPrice,
  required String maxPrice,
  required int compoundId,
  required int areaId,
}) async {
  final endpoint = '${Endpoints().baseUrl}${Endpoints().search}';

  http.Response? response;
  await HttpServices().post(url: endpoint, body: {
    "min_price": "$minPrice",
    "max_price": "$maxPrice",
    "compound_id": "$compoundId",
    "area_id": "$areaId",
  }).then((requestResponse) {
    response = requestResponse;
  });
  return response;
}
