import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';
import 'package:http/io_client.dart';

/// Core Services for HTTP GET & POST
/// @param url endpoint in String , parameters of Network request in Map<String , dynamic>
/// @return response or throw error message
///
class HttpServices {
  Map<String, String> getHeader() {
    return {
      "Content-Type": "application/json",
    };
  }

  ///POST Method
  Future<dynamic> post({
    required String url,
    required Map<String, dynamic> body,
  }) async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);
    try {
      final response = await http.post(Uri.parse(url),
          headers: getHeader(), body: json.encode(body));
      return response;
    } catch (error) {
      throw error.toString();
    }
  }

  ///GET Method
  Future<dynamic> get({
    required String url,
  }) async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);
    try {
      Response response = await http.get(Uri.parse(url), headers: getHeader());

      return response;
    } catch (error) {
      throw error.toString();
    }
  }
}
