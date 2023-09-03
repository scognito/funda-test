import 'dart:convert';

import 'package:funda_test/models/apartment.dart';
import 'package:funda_test/models/apartment_index.dart';
import 'package:funda_test/services/web_service.dart';

import '../data/json/apartment.json.dart';
import '../data/json/apartment_index.json.dart';

class MockWebService implements WebService {
  @override
  Future<ApartmentIndex> getIndex({required String term, String? page}) async {
    return Future.value(
        ApartmentIndex.fromJson(json.decode(apartmentIndexJson)));
  }

  @override
  Future<Apartment> getApartment({required String identifier}) async {
    return Future.value(Apartment.fromJson(json.decode(apartmentJson)));
  }

  @override
  String getUrlPath(String searchTerm, String? page) {
    // not needed for tests
    return '';
  }
}
