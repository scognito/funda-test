import 'package:flutter/material.dart';
import 'package:funda_test/models/apartment.dart';
import 'package:funda_test/styles.dart';
import 'package:funda_test/widgets/commons.dart';

class ApartmentInfoView extends StatelessWidget {
  final Apartment apartment;

  const ApartmentInfoView({
    Key? key,
    required this.apartment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(apartment.adres ?? '', style: kStyleTitle),
        const SizedBox(height: 8),
        Text(
          '${apartment.postcode} ${apartment.plaats}',
          style: kStyleParagraphP2,
        ),
        const SizedBox(height: 8),
        Text(
          '€ ${apartment.koopPrijs.toString()}',
          style: kStyleParagraphTitle,
        ),
        const SizedBox(height: 8),
        const Separator(),
        Text(
          apartment.volledigeOmschrijving ?? '',
          style: kStyleParagraph,
        )
      ],
    );
  }
}
