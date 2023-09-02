import 'package:flutter/material.dart';
import 'package:funda_test/config/app_colors.dart';
import 'package:funda_test/config/app_text.dart';
import 'package:funda_test/models/apartment.dart';
import 'package:funda_test/widgets/apartment_summary_row.dart';
import 'package:funda_test/widgets/commons.dart';

class ApartmentInfoView extends StatelessWidget {
  final Apartment apartment;

  const ApartmentInfoView({
    Key? key,
    required this.apartment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            apartment.adres ?? '',
            style: AppText.default21Semibold,
          ),
          const SizedBox(height: 8),
          Text(
            '${apartment.postcode} ${apartment.plaats}',
            style:
                AppText.default16Regular.copyWith(color: AppColors.fundaBlue),
          ),
          const SizedBox(height: 8),
          ApartmentSummaryRow(
            woon: apartment.woonOppervlakte,
            perceel: apartment.perceelOppervlakte,
            kamers: apartment.aantalKamers,
          ),
          const SizedBox(height: 16),
          Text(
            '€ ${apartment.koopPrijs.toString()}',
            style: AppText.default19Semibold,
          ),
          const Separator(),
          Text(
            'Description',
            style: AppText.default19Semibold,
          ),
          const SizedBox(height: 8),
          Text(
            apartment.volledigeOmschrijving ?? '',
            style: AppText.default16Regular.copyWith(color: AppColors.darkGray),
          )
        ],
      ),
    );
  }
}
