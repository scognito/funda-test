import 'dart:async';
import 'dart:convert';

import 'package:funda_test/models/apartment.dart';
import 'package:funda_test/models/apartment_index.dart';
import 'package:funda_test/models/network_exception.dart';
import 'package:http/http.dart' as http;

class WebService {
  static const String apiKey = 'ac1b0b1572524640a0ecc54de453ea9f';
  static const int timeoutInSeconds = 10;

  static const String baseURL = 'partnerapi.funda.nl';
  static const String apartmentPath = '/feeds/Aanbod.svc/json/detail';

  //Example URL: http://partnerapi.funda.nl/feeds/Aanbod.svc/json/ac1b0b1572524640a0ecc54de453ea9f/?type=koop&zo=/amsterdam/tuin/video/
  Future<ApartmentIndex> getIndex({required String term, String? page}) async {
    final response = await http
        .get(Uri.https(baseURL, getUrlPath(term, page)))
        .timeout(const Duration(seconds: timeoutInSeconds), onTimeout: () {
      throw TimeoutException('Server timeout');
    });

    if (response.statusCode == 200) {
      return ApartmentIndex.fromJson(json.decode(response.body));
    } else {
      // could be improved tracking various error codes and messages
      throw NetworkException(
          response.statusCode, 'Error ${response.statusCode}');
    }
  }

  //Example URL: https://partnerapi.funda.nl/feeds/Aanbod.svc/json/detail/ac1b0b1572524640a0ecc54de453ea9f/koop/36569869-c4f0-4407-b105-90e91a541f09
  Future<Apartment> getApartment({required String identifier}) async {
    final response = await http
        .get(Uri.https(baseURL, '$apartmentPath/$apiKey/koop/$identifier'))
        .timeout(const Duration(seconds: timeoutInSeconds), onTimeout: () {
      throw TimeoutException('Server timeout');
    });

    if (response.statusCode == 200) {
      return Apartment.fromJson(json.decode(response.body));
    } else {
      // could be improved tracking various error codes and messages
      throw NetworkException(
          response.statusCode, 'Error ${response.statusCode}');
    }
  }

  String getUrlPath(String searchTerm, String? page) {
    String p = page ?? '';

    return '/feeds/Aanbod.svc/json/$apiKey/?type=koop&zo=/$searchTerm/tuin/video$p';
  }
}
