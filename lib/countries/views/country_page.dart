// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng_stage_3_task/components/helper_tools.dart';
import 'package:hng_stage_3_task/components/swipes.dart';
import 'package:provider/provider.dart';

import '../../utils/constants.dart';
import '../view_models/countries_view_model.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = MediaQuery.of(context).platformBrightness;
    var size = MediaQuery.of(context).size;
    CountriesViewModel countriesViewModel = context.watch<CountriesViewModel>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('${countriesViewModel.selectedCountry!.name!.common}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: SizedBox(
                height: size.height * 0.25,
                width: double.infinity,
                child: Swiper.children(
                  // autoplay: true,
                  pagination: const SwiperPagination(
                      alignment: Alignment.bottomCenter,
                      builder: DotSwiperPaginationBuilder(
                          color: Colors.grey, activeColor: Colors.red)),
                  control: SwiperControl(
                      color: theme == Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      //  padding: const EdgeInsets.all(10),
                      iconPrevious: Icons.arrow_back_outlined,
                      iconNext: Icons.arrow_forward_outlined),
                  children: [
                    Swipes(
                        image:
                            '${countriesViewModel.selectedCountry!.flags!.png}'),
                    Swipes(
                        image:
                            '${countriesViewModel.selectedCountry!.coatOfArms!.png}'),
                    Swipes(
                      image:
                          '${countriesViewModel.selectedCountry!.maps!.googleMaps}',
                    ),
                  ],
                ),
              ),
            ),
            addVerticalSpace(24.sp),
            ReuseColumn(
              countriesViewModel: countriesViewModel,
              widget: [
                ReuseRichText(
                  countriesViewModel: countriesViewModel,
                  text: 'Population: ',
                  text2: '${countriesViewModel.selectedCountry!.population}',
                ),
                addVerticalSpace(8.0),
                ReuseRichText(
                  countriesViewModel: countriesViewModel,
                  text: 'Region: ',
                  text2:
                      '${countriesViewModel.selectedCountry!.region.toString().replaceAll('Region.', '')}',
                ),
                addVerticalSpace(8.0),
                ReuseRichText(
                  countriesViewModel: countriesViewModel,
                  text: 'Capital: ',
                  text2: countriesViewModel.selectedCountry!.capital
                      .toString()
                      .replaceAll('[', '')
                      .replaceAll(']', ''),
                ),
              ],
            ),
            addVerticalSpace(12.5.sp),
            ReuseColumn(
              countriesViewModel: countriesViewModel,
              widget: [
                ReuseRichText(
                  countriesViewModel: countriesViewModel,
                  text: 'Official language: ',
                  text2: countriesViewModel.selectedCountry!.languages
                      .toString()
                      .replaceAll('{', '')
                      .replaceAll('}', ''),
                ),
                addVerticalSpace(8.0.sp),
                ReuseRichText(
                  countriesViewModel: countriesViewModel,
                  text: 'Ethnic group: ',
                  text2: countriesViewModel.selectedCountry!.altSpellings!.first
                      .toString()
                      .replaceAll('[', '')
                      .replaceAll(']', ''),
                ),
                addVerticalSpace(8.0.sp),
                ReuseRichText(
                  countriesViewModel: countriesViewModel,
                  text: 'Religion: ',
                  text2:
                      '${countriesViewModel.selectedCountry!.name!.official}',
                ),
              ],
            ),
            addVerticalSpace(10.5.sp),
            ReuseColumn(
              countriesViewModel: countriesViewModel,
              widget: [
                ReuseRichText(
                  countriesViewModel: countriesViewModel,
                  text: 'Independence: ',
                  text2: '${countriesViewModel.selectedCountry!.independent}',
                ),
                addVerticalSpace(8.0.sp),
                ReuseRichText(
                  countriesViewModel: countriesViewModel,
                  text: 'Area: ',
                  text2: '${countriesViewModel.selectedCountry!.area}',
                ),
              ],
            ),
            ReuseColumn(
              countriesViewModel: countriesViewModel,
              widget: [
                ReuseRichText(
                    countriesViewModel: countriesViewModel,
                    text: 'Time zone: ',
                    text2: countriesViewModel.selectedCountry!.timezones
                        .toString()
                        .replaceAll('[', '')
                        .replaceAll(']', '')),
                addVerticalSpace(8.0.sp),
                ReuseRichText(
                    countriesViewModel: countriesViewModel,
                    text: 'Date format:',
                    text2: '${countriesViewModel.selectedCountry!.gini}'),
                addVerticalSpace(8.0.sp),
                ReuseRichText(
                    countriesViewModel: countriesViewModel,
                    text: 'Driving side: ',
                    text2:
                        '${countriesViewModel.selectedCountry!.car!.side.toString().replaceAll('Side.', '')}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseRichText extends StatelessWidget {
  const ReuseRichText({
    Key? key,
    required this.countriesViewModel,
    required this.text,
    required this.text2,
  }) : super(key: key);

  final CountriesViewModel countriesViewModel;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    var theme = MediaQuery.of(context).platformBrightness;
    return RichText(
      text: TextSpan(
          text: text,
          style: Constants.swipesTextStyle1.copyWith(
              color: theme == Brightness.dark
                  ? Constants.scaffoldBackgroundlightTheme
                  : Constants.scaffoldBackgrounddarkTheme),
          children: [TextSpan(text: text2, style: Constants.swipesTextStyle2)]),
      // child: Text(
      //     'Population: ${countriesViewModel.selectedCountry!.population}'),
    );
  }
}

class ReuseColumn extends StatelessWidget {
  const ReuseColumn({
    Key? key,
    required this.countriesViewModel,
    required this.widget,
  }) : super(key: key);

  final CountriesViewModel countriesViewModel;

  final List<Widget> widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widget,
      ),
    );
  }
}
