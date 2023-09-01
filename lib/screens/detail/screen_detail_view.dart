import 'package:flutter/material.dart';
import 'package:funda_test/models/apartment.dart';
import 'package:funda_test/screens/detail/apartment_features_view.dart';
import 'package:funda_test/screens/detail/screen_details_viewmodel.dart';
import 'package:funda_test/widgets/apartment_info_view.dart';
import 'package:funda_test/widgets/apartment_media_view.dart';
import 'package:funda_test/widgets/retry_view.dart';
import 'package:provider/provider.dart';

class ScreenApartmentDetail extends StatelessWidget {
  final String apartmentId;

  const ScreenApartmentDetail({
    Key? key,
    required this.apartmentId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ScreenDetailsViewModel>(
      create: (_) => ScreenDetailsViewModel(apartmentId: apartmentId),
      child: Consumer<ScreenDetailsViewModel>(
        builder: (context, model, child) {
          Widget body;

          if (model.isLoading) {
            body = const Center(
              child: CircularProgressIndicator(),
            );
          } else if (model.hasError) {
            body = RetryView(
              error: model.error,
              callback: () => model.fetchData(),
            );
          } else if (!model.hasApartment) {
            body = const Center(child: Text('APARTMENT NOT FOUND'));
          } else {
            Apartment apartment = model.apartment!;

            body = SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ApartmentMediaView(
                      apartment: apartment,
                      onMapClicked: () => model.openMap(),
                    ),
                    ApartmentInfoView(apartment: apartment),
                    ApartmentFeaturesView(apartment: apartment),
                  ],
                ),
              ),
            );
          }

          return Scaffold(
              appBar: AppBar(title: Text(model.apartmentName)),
              body: SafeArea(
                child: body,
              ),
              floatingActionButton: model.hasBrokerPhone
                  ? FloatingActionButton(
                      child: const Icon(Icons.phone),
                      onPressed: () => model.callBroker(),
                    )
                  : null);
        },
      ),
    );
  }
}
