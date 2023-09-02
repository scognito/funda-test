import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:funda_test/basic_viewmodel.dart';
import 'package:funda_test/config/utils.dart';
import 'package:funda_test/locator.dart';
import 'package:funda_test/models/apartment_index.dart';
import 'package:funda_test/screens/detail/screen_detail_view.dart';
import 'package:funda_test/services/web_service.dart';

class ScreenHomeViewModel extends BasicViewModel {
  final _web = locator.get<WebService>();

  ApartmentIndex? apartmentIndex;
  final TextEditingController textEditingController = TextEditingController();

  String searchTerm = '';

  String? nextPageLink;
  String? previousPageLink;
  int totalResult = 0;
  String? currentPage;

  Future<void> search() async {
    if (searchTerm.isEmpty) {
      return;
    }

    resetPageData();
    apartmentIndex = await runFuture(_web.getIndex(
      term: searchTerm,
      page: currentPage,
    ));

    updatePageData();
  }

  void resetPageData() {
    nextPageLink = null;
    previousPageLink = null;
    totalResult = 0;
  }

  void updatePageData() {
    totalResult = apartmentIndex!.totaalAantalObjecten;
    previousPageLink = getPageFromUrl(apartmentIndex!.paging.vorigeUrl);
    // the nextPage url arrives from server even if there are no more objects
    nextPageLink = apartmentIndex!.objects.isNotEmpty
        ? getPageFromUrl(apartmentIndex!.paging.volgendeUrl)
        : null;
  }

  // Can be improved
  String? getPageFromUrl(String? link) {
    if (link == null) {
      return link;
    }
    String parsed = link.substring(link.lastIndexOf('/tuin/') + 5, link.length);
    return parsed;
  }

  Future<void> goToNextPage() async {
    currentPage = nextPageLink;
    await search();
  }

  Future<void> goToPreviousPage() async {
    currentPage = previousPageLink;
    await search();
  }

  void clearSearch() {
    textEditingController.text = '';
    searchTerm = '';
    notifyListeners();
  }

  void setSearchTerm(String term) {
    searchTerm = term;
    notifyListeners();
  }

  bool get canSearch => searchTerm.isNotEmpty;

  bool hasApartments() {
    if (apartmentIndex == null) {
      return false;
    }

    return apartmentIndex!.objects.isNotEmpty;
  }

  Future<void> goToDetail(
    ApartmentObject apartment,
    BuildContext context,
  ) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScreenApartmentDetail(apartmentId: apartment.id!),
      ),
    );
  }

  void debug() {
    if (kDebugMode) {
      dPrint('searchTerm: $searchTerm');
      dPrint('currentPage: $currentPage');
      dPrint('previousPageLink: $previousPageLink');
      dPrint('nextPageLink: $nextPageLink');
    }
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
}
