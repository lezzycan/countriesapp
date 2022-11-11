import 'package:flutter/material.dart';
import 'package:hng_stage_3_task/countries/views/country_page.dart';

void openCountryDetails(BuildContext context) async {
  Navigator.push(
      context, 
      MaterialPageRoute(
        builder: ((context) => const CountryPage())));
}
