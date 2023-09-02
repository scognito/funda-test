import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:funda_test/config/app_colors.dart';
import 'package:funda_test/config/app_text.dart';
import 'package:funda_test/models/apartment.dart';
import 'package:funda_test/widgets/commons.dart';

class ApartmentFeaturesView extends StatelessWidget {
  final Apartment apartment;

  const ApartmentFeaturesView({Key? key, required this.apartment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            'Features',
            style: AppText.default19Semibold.copyWith(color: AppColors.black),
          ),
          const SizedBox(height: 8),
          if (apartment.kenmerken != null && apartment.kenmerken!.isNotEmpty)
            ...apartment.kenmerken!
                .map((e) => Section(characteristic: e))
                .toList()
        ],
      ),
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
        Text(
          characteristic.titel ?? '',
          style: AppText.default17Medium,
        ),
        const Separator(),
        if (characteristic.kenmerken != null &&
            characteristic.kenmerken!.isNotEmpty)
          ...characteristic.kenmerken!
              .map((e) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.naam ?? '',
                        style: AppText.default16Regular
                            .copyWith(color: AppColors.darkGray),
                      ),
                      const SizedBox(height: 4),
                      Html(
                        data: e.waarde,
                        style: {
                          'body': Style(
                              color: const Color(0xff000000),
                              padding: HtmlPaddings.zero,
                              margin: Margins(
                                bottom: Margin.zero(),
                                left: Margin.zero(),
                                top: Margin.zero(),
                                right: Margin.zero(),
                              )),
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
