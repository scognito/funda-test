import 'package:flutter/material.dart';
import 'package:funda_test/config/app_colors.dart';
import 'package:funda_test/models/network_exception.dart';

class RetryView extends StatelessWidget {
  final dynamic error;
  final Function callback;

  const RetryView({
    Key? key,
    required this.error,
    required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = '';

    if (error is NetworkException) {
      message = (error as NetworkException).message;
    } else {
      message = error.toString();
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(message),
            const SizedBox(height: 16),
            MaterialButton(
              color: AppColors.fundaOrange,
              textColor: AppColors.white,
              onPressed: callback(),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
