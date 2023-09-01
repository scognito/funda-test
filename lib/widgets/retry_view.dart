import 'package:flutter/material.dart';
import 'package:funda_test/models/network_exception.dart';

class RetryView extends StatelessWidget {
  final dynamic error;
  final void Function() callback;
  final bool showGoBack;

  const RetryView({
    Key? key,
    required this.error,
    required this.callback,
    this.showGoBack = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String message = '';

    if (error is NetworkException) {
      message = (error as NetworkException).message;
    } else {
      message = error.toString();
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(message),
        const SizedBox(height: 16),
        MaterialButton(
          color: Colors.red,
          textColor: Colors.white,
          onPressed: callback,
          child: const Text('Retry'),
        ),
      ],
    );
  }
}
