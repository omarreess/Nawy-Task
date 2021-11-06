import 'package:http/http.dart' as http;
import 'package:nawy/model/networking/endpoints/endpoints_paths.dart';
import 'shared/http_services.dart';

/// Compunds Service to be used by client
/// @return response
///

Future<http.Response?> compoundsService() async {
  final endpoint = '${Endpoints().baseUrl}${Endpoints().compounds}';

  http.Response? response;
  await HttpServices()
      .get(
    url: endpoint,
  )
      .then((requestResponse) {
    response = requestResponse;
  });
  return response;
}
