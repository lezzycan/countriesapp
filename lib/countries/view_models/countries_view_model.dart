import 'package:flutter/cupertino.dart';
import 'package:hng_stage_3_task/countries/model/contries_model.dart';
import 'package:hng_stage_3_task/countries/model/country_error.dart';
import 'package:hng_stage_3_task/countries/repo/api_status.dart';
import 'package:hng_stage_3_task/countries/repo/country_service.dart';

class CoutriesViewModel with ChangeNotifier {
  bool _isLoading = false;
  List<CountriesModel> _countriesModel = [];
  CountryError? _countryError;

  bool get isLoading => _isLoading;
  List<CountriesModel> get countriesModel => _countriesModel;
  CountryError? get countryError => _countryError;

  setIsloading(bool isLoading) async {
    _isLoading = isLoading;
    notifyListeners();
  }

  setCountriesModel(List<CountriesModel> countriesModel) {
    _countriesModel = countriesModel;
  }

  setCountryError(CountryError countryError) {
    _countryError = countryError;
  }

  getCountries() async {
    setIsloading(true);
    var response = await CountryService.getData();
    if (response is Success) {
      setCountriesModel(response.response as List<CountriesModel>);
    }
    if (response is Failure) {
      CountryError countryError = CountryError(
          code: response.code, message: response.errorResponse.toString());
      setCountryError(countryError);
    }
    setIsloading(false);
  }
}
