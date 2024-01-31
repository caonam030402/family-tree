import 'package:flutter/cupertino.dart';

class SearchProvider with ChangeNotifier {
  TextEditingController _searchController = TextEditingController();

  TextEditingController? get searchController => _searchController;

  void changeSearchValue(value) {
    searchController?.text = value;
    notifyListeners();
  }
}
