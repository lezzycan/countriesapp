import 'dart:io';

import 'package:hng_stage_3_task/countries/repo/api_status.dart';

import '../../utils.dart';
import '../../utils/constants.dart';
import 'package:http/http.dart' as https;

import '../model/contries_model.dart';

class CountryService {
  static Future<dynamic> getData() async {
    try {
      var url = Uri.parse(Constants.BASE_URL);
      var response = await https.get(url);

      if (response.statusCode == 200) {
        return Success(
          code: 200,
          // response: CountryModel.countriesFromJson(dataList)..sort(Utils.ascendingSort),
          response: countriesModelFromJson(response.body)
            ..sort(Utils.ascendingSort),
        );
      }
      return Failure(
          code: Constants.INVALID_RESPONSE, errorResponse: 'INVALID_RESPONSE');
    } on HttpException {
      return Failure(code: Constants.NO_INTERNET, errorResponse: 'NO_INTERNET');
    } on SocketException {
      return Failure(
          code: Constants.NO_INTERNET, errorResponse: 'NO_INTERNET CONNECTION');
    } on FormatException {
      return Failure(
          code: Constants.INVALID_FORMAT, errorResponse: 'INVALID_FORMAT');
    } catch (e) {
      return Failure(
          code: Constants.UNKNOWN_ERROR, errorResponse: 'UNKNOWN_ERROR');
    }
  }
}
