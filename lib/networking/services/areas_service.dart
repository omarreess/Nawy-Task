import 'package:http/http.dart' as http;
import 'package:nawy/networking/endpoints/endpoints_paths.dart';
import 'shared/http_services.dart';

/// Areas Service to be used by client
/// @return response
///

Future<http.Response?> areasService() async {
  final endpoint = '${Endpoints().baseUrl}${Endpoints().areas}';

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