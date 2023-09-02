import 'package:flutter/material.dart';
import 'package:funda_test/widgets/icon_desc_view.dart';

class ApartmentSummaryRow extends StatelessWidget {
  final int? woon;
  final int? perceel;
  final int? kamers;

  const ApartmentSummaryRow({
    this.woon,
    this.perceel,
    this.kamers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (woon != null)
          IconDesc(
            icon: Icons.square_outlined,
            value: '$woon m²',
          ),
        const SizedBox(width: 16),
        if (perceel != null)
          IconDesc(
            icon: Icons.square,
            value: '$perceel m²',
          ),
        const SizedBox(width: 16),
        if (kamers != null)
          IconDesc(
            icon: Icons.bed_outlined,
            value: '$kamers',
          ),
      ],
    );
  }
}
