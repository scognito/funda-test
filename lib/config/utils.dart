import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher_string.dart';

void dPrint(var argument) {
  if (kDebugMode) {
    print(argument);
  }
}

class Utils {
  static Future<void> callPhone(String? phoneNumber) async {
    if (phoneNumber == null) {
      return;
    }

    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );

    if (await canLaunchUrlString(phoneLaunchUri.toString())) {
      await launchUrlString(phoneLaunchUri.toString());
    }
  }

  static Future<void> openMapFromCoordinates(double lat, double lon) async {
    String mapURL =
        'https://maps.google.com/?q=${lat.toString()},${lon.toString()}';

    if (Platform.isIOS) {
      mapURL = 'https://maps.apple.com/?ll=${lat.toString()},${lon.toString()}';
    }

    dPrint('opening $mapURL');

    if (await canLaunchUrlString(mapURL)) {
      await launchUrlString(mapURL);
    }
  }
}
