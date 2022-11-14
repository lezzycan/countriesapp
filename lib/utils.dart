import 'package:hng_stage_3_task/countries/model/contries_model.dart';
import 'package:hng_stage_3_task/countries/model/country_model.dart';

class Utils {
  static int ascendingSort(CountriesModel c1, CountriesModel c2) =>
      c1.name!.common!.compareTo(c2.name!.common!);
}
