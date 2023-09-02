import 'package:flutter/material.dart';
import 'package:funda_test/config/app_assets.dart';
import 'package:funda_test/config/app_colors.dart';
import 'package:funda_test/models/apartment.dart';

class ApartmentMediaView extends StatelessWidget {
  final Apartment apartment;
  final Function? onMapClicked;

  const ApartmentMediaView({
    Key? key,
    required this.apartment,
    this.onMapClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (apartment.media == null || apartment.media!.isEmpty) {
      return const SizedBox();
    }

    return SizedBox(
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView(
            children: [
              ...apartment.media!.map((e) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: FadeInImage.assetNetwork(
                    placeholder: Assets.placeholder,
                    image: e.mediaItems!.last.url!,
                  ),
                );
              }).toList(),
            ],
          ),
          const Positioned(
              left: 10,
              child: ArrowButton(
                icon: Icons.chevron_left,
              )),
          const Positioned(
              right: 10,
              child: ArrowButton(
                icon: Icons.chevron_right,
              )),
          if (apartment.wGS84Y != null &&
              apartment.wGS84X != null &&
              onMapClicked != null)
            Positioned(
              right: 10,
              bottom: 20,
              child: ElevatedButton(
                onPressed: () => onMapClicked!(),
                style: ElevatedButton.styleFrom(fixedSize: const Size(32, 32)),
                child: Icon(
                  Icons.map_sharp,
                  color: AppColors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// TODO: Add controller for handling taps and scroll media
class ArrowButton extends StatelessWidget {
  final IconData icon;

  const ArrowButton({
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.white.withOpacity(0.5),
      ),
      child: Icon(
        icon,
        color: AppColors.white,
        size: 42,
      ),
    );
  }
}
