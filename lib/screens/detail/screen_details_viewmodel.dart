import 'package:funda_test/basic_viewmodel.dart';
import 'package:funda_test/locator.dart';
import 'package:funda_test/models/apartment.dart';
import 'package:funda_test/services/web_service.dart';
import 'package:funda_test/config/utils.dart';

class ScreenDetailsViewModel extends BasicViewModel {
  final _web = locator.get<WebService>();

  Apartment? apartment;

  final String apartmentId;

  ScreenDetailsViewModel({required this.apartmentId}) {
    fetchData();
  }

  Future<void> fetchData() async {
    apartment = await runFuture(_web.getApartment(identifier: apartmentId));
  }

  bool get hasApartment => apartment != null;

  String get apartmentName =>
      (!hasApartment || apartment!.adres == null) ? '' : apartment!.adres!;

  bool get hasBrokerPhone =>
      hasApartment &&
      apartment!.makelaarTelefoon != null &&
      apartment!.makelaarTelefoon!.trim().isNotEmpty;

  String? get brokerPhone => apartment?.makelaarTelefoon;

  bool get hasCoordinates =>
      hasApartment && apartment!.wGS84Y != null && apartment!.wGS84X != null;

  Future<void> callBroker() async {
    await Utils.callPhone(brokerPhone);
  }

  Future<void> openMap() async {
    if (hasCoordinates) {
      await Utils.openMapFromCoordinates(
        apartment!.wGS84Y!,
        apartment!.wGS84X!,
      );
    }
  }
}
