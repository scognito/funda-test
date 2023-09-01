import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:funda_test/models/apartment.dart';
import 'package:funda_test/styles.dart';
import 'package:funda_test/widgets/commons.dart';

class ApartmentFeaturesView extends StatelessWidget {
  final Apartment apartment;

  const ApartmentFeaturesView({Key? key, required this.apartment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        const Text('Features', style: kStyleParagraphTitle),
        const SizedBox(height: 8),
        if (apartment.kenmerken != null && apartment.kenmerken!.isNotEmpty)
          ...apartment.kenmerken!
              .map((e) => Section(characteristic: e))
              .toList()
      ],
    );
  }
}

class Section extends StatelessWidget {
  final Kenmerken characteristic;

  const Section({Key? key, required this.characteristic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Text(characteristic.titel ?? '', style: kStyleParagraphSubtitle),
        const Separator(),
        if (characteristic.kenmerken != null &&
            characteristic.kenmerken!.isNotEmpty)
          ...characteristic.kenmerken!
              .map((e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(e.naam ?? '', style: kStyleFeatureTitle),
                      const SizedBox(height: 4),
                      Html(
                        data: e.waarde,
                        style: {
                          'body': Style(
                            color: const Color(0xff000000),
                          ),
                        },
                      ),
                      const Separator(),
                    ],
                  ))
              .toList()
      ],
    );
  }
}
