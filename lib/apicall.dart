import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:tripdetail/Utility/utility.dart';

class ApiCall {
  Future<dynamic> getMethod(url, params) async {
    var responseJson = '';
    try {
      final apiUrl = Uri.parse(url).replace(queryParameters: params);
      final response = await http.get(apiUrl);
      responseJson = _response(response);
    } on SocketException {
      Utility.toastMessage('No Internet connection');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = response.body;
        return responseJson;
      case 400:
        Utility.toastMessage("Invalid Request: ");

        return '';
      case 401:
      case 403:
        Utility.toastMessage("Unauthorised: ");

        return '';
      case 500:
      default:
        Utility.toastMessage("Error occurred with StatusCode :");
    }
  }
}
