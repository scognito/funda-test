import 'package:flutter/material.dart';

abstract class BasicViewModel extends ChangeNotifier {
  dynamic _error;
  bool _isLoading = false;
  bool _hasData = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  dynamic get error => _error;

  Future runFuture(Future function) async {
    try {
      _error = null;
      _hasData = false;
      isLoading = true;
      dynamic future = await function;
      _hasData = true;
      return future;
    } catch (e) {
      _error = e;
    } finally {
      isLoading = false;
    }
  }

  bool get hasError => _error != null;

  bool get hasData => _hasData;
}
