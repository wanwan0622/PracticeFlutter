import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String now = "現在時刻は………";

  void getTime() {
    this.now = new DateTime.now().toString();
    notifyListeners();
  }
}
