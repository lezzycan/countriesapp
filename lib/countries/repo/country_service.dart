import 'dart:io';

import 'package:hng_stage_3_task/countries/model/contries_model.dart';
import 'package:hng_stage_3_task/countries/repo/api_status.dart';

import '../../utils/constants.dart';
import 'package:http/http.dart' as https;

class CountryService {
  static Future<Object> getData() async {
    try {
      var url = Uri.parse(Constants.BASE_URL);
      var response = await https.get(url);
      if (response.statusCode == 200) {
        return Success(
          code: 200,
          response: countriesModelFromJson(response.body),
        );
      }
      return Failure(
          code: Constants.INVALID_RESPONSE, errorResponse: 'INVALID_RESPONSE');
    } on HttpException {
      return Failure(code: Constants.NO_INTERNET, errorResponse: 'NO_INTERNET');
    } on FormatException {
      return Failure(
          code: Constants.INVALID_FORMAT, errorResponse: 'INVALID_FORMAT');
    } catch (e) {
      return Failure(
          code: Constants.UNKNOWN_ERROR, errorResponse: 'UNKNOWN_ERROR');
    }
  }
}
