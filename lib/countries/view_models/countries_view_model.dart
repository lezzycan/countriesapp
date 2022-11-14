import 'package:flutter/cupertino.dart';
import 'package:hng_stage_3_task/countries/model/contries_model.dart';
import 'package:hng_stage_3_task/countries/model/country_error.dart';
import 'package:hng_stage_3_task/countries/repo/api_status.dart';
import 'package:hng_stage_3_task/countries/repo/country_service.dart';

import '../model/country_model.dart';

class CountriesViewModel extends ChangeNotifier {
  bool _isLoading = false;
  List<CountriesModel> _countriesModel = <CountriesModel>[];
  CountryError? _countryError;
  CountriesModel? _selectedCountry;
  List<CountriesModel> _countriesModelForDisplay = <CountriesModel>[];

  String _query = '';

  bool get isLoading => _isLoading;
  List<CountriesModel>? get countriesModel => _countriesModel;
  CountryError? get countryError => _countryError;
  CountriesModel? get selectedCountry => _selectedCountry;
  String get query => _query;
  List<CountriesModel>? get countriesModelForDisplay =>
      _countriesModelForDisplay;

  setIsloading(bool isLoading) async {
    _isLoading = isLoading;
    notifyListeners();
  }

  CountriesViewModel() {
    getCountries();
  }

  setCountriesModel(List<CountriesModel> countriesModel) {
    _countriesModel = countriesModel;
  }

  setCountryError(CountryError countryError) {
    _countryError = countryError;
  }

  setSelectedCountry(CountriesModel selectedCountry) {
    _selectedCountry = selectedCountry;
  }

  setQuery(String query) {
    _query = query;
  }

  getCountries() async {
    setIsloading(true);
    var response = await CountryService.getData();
    if (response is Success) {
      // setCountriesModel(response.response as List<CountriesModel>);
      _countriesModel = response.response as List<CountriesModel>;
    }
    if (response is Failure) {
      CountryError countryError = CountryError(
          code: response.code, message: response.errorResponse.toString());
      setCountryError(countryError);
    }
    setIsloading(false);
  }

// local search
  void searchCountry(String query) {
    var suggestions = countriesModel!.where((country) {
      final countryName = country.name!.common!.toLowerCase();
      final countryCapital = country.capital.toString().toLowerCase();
      final region = country.region.toString().toLowerCase();
      final input = query.toLowerCase();
      return countryName.contains(input) || countryCapital.contains(input) ||
      region.contains(input);
    }).toList();

    setCountriesModel(suggestions);
    setQuery(query);
    notifyListeners();
  }

  //network search
  // Future searchCountry(String query) async {
  //   bool mounted = false;
  //   final suggestions = await CountryService.getData(query) as List<CountriesModel>;

  //  setCountriesModel(suggestions);

  //   setQuery(query);
  //   notifyListeners();

  //   if (!mounted) return;
  // }

  // void searchCountries(String query) {
  //   query.toLowerCase();
  //    countriesModel.where((country) {
  //     var countriesName = country.name!.common!.toLowerCase();
  //     return countriesName.contains(query);
  //   }).toList();
  // }
}
