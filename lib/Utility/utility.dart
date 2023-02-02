import 'package:fluttertoast/fluttertoast.dart';

class Utility {
  static void toastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
