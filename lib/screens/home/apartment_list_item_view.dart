import 'package:flutter/material.dart';
import 'package:funda_test/models/apartment_index.dart';
import 'package:funda_test/screens/detail/screen_detail_view.dart';
import 'package:funda_test/styles.dart';

class ApartmentListItemView extends StatelessWidget {
  final ApartmentObject apartment;

  const ApartmentListItemView({Key? key, required this.apartment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () async {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    ScreenApartmentDetail(apartmentId: apartment.id!)),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              SizedBox(
                height: 80,
                child: Image.network(apartment.foto!),
              ),
              const SizedBox(
                height: 8,
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      apartment.adres!,
                      style: kIndexTitle,
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text('${apartment.postcode!} ${apartment.woonplaats}',
                        style: kIndexLocation),
                    const SizedBox(height: 4),
                    Text(
                      '€ ${apartment.koopprijs!.toString()}',
                      style: kIndexPrice,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
