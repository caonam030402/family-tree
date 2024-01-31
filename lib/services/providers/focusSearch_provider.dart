import 'package:flutter/cupertino.dart';

class FocusSearchProvider with ChangeNotifier {
  bool _isFocus = true;

  bool get isFocus => _isFocus;

  void handleFocusValue(value) {
    _isFocus = value;
    notifyListeners();
  }
}
