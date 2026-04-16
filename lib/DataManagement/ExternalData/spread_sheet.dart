import 'package:http/http.dart' as http;
import './table_names.dart';

class SpreadSheet {

  static const String url =
      'https://sheets.googleapis.com/v4/spreadsheets/1t9bbhoG4uhJufTnGbF0Mco8qr2wWCO2QRY3Y5bx_mRs/values/{}?key=AIzaSyClx3lxkV1tHqtxZDFEqwNhJGe9jWs-V6s';

  static getTableUrl(TableNames name) =>
      url.replaceAll('{}', name.name.split('.').last);

  static Future<String> getJsonFromTable(TableNames name) async {

    try {

      final response = await http.get(Uri.parse(getTableUrl(name)));

      if (response.statusCode == 200) {
        return response.body;
      }
      else {
        return 'Error occurred while loading sheet data.';
      }

    }
    catch(exception) {
      return exception.toString();
    }

  }

}