import 'package:flutter/material.dart';
import 'package:funda_test/config/app_assets.dart';
import 'package:funda_test/config/app_colors.dart';
import 'package:funda_test/config/app_text.dart';
import 'package:funda_test/models/apartment_index.dart';
import 'package:funda_test/widgets/apartment_summary_row.dart';

class ApartmentListItemView extends StatelessWidget {
  final ApartmentObject apartment;
  final Function onTap;

  const ApartmentListItemView({
    Key? key,
    required this.apartment,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => onTap(),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 120,
                    child: FadeInImage.assetNetwork(
                      placeholder: Assets.placeholder,
                      image: apartment.foto!,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          apartment.adres!,
                          style: AppText.default16Medium
                              .copyWith(color: AppColors.fundaBlue),
                          maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Text('${apartment.postcode!} ${apartment.woonplaats}',
                            style: AppText.default16Regular),
                        const SizedBox(height: 4),
                        Text(
                          '€ ${apartment.koopprijs!.toString()}',
                          style: AppText.default16Regular,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              ApartmentSummaryRow(
                woon: apartment.woonoppervlakte,
                perceel: apartment.perceeloppervlakte,
                kamers: apartment.aantalKamers,
              )
            ],
          ),
        ),
      ),
    );
  }
}
