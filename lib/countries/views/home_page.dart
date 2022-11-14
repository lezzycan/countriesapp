// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hng_stage_3_task/components/api_error.dart';
import 'package:hng_stage_3_task/components/app_loading.dart';
import 'package:hng_stage_3_task/components/helper_tools.dart';
import 'package:hng_stage_3_task/components/showbottom_ui.dart';
import 'package:hng_stage_3_task/utils/navigation_utils.dart';
import 'package:hng_stage_3_task/utils/themes.dart';
import 'package:provider/provider.dart';
import '../../components/search_input_panel.dart';
import '../../utils/constants.dart';
import '../model/contries_model.dart';
import '../model/country_model.dart';
import '../repo/country_service.dart';
import '../view_models/countries_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<CountriesModel> _countrieModel = <CountriesModel>[];
  //  List<CountriesModel> _countrieModelForDisplay = <CountriesModel>[];

  //  @override
  // void initState() {
  //  CountryService.getData().then((value){
  //   setState(() {
  //     _countrieModel.addAll(value as List<CountriesModel>);
  //     _countrieModel = _countrieModelForDisplay;
  //   });

  //  })
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    CountriesViewModel countriesViewModel = context.watch<CountriesViewModel>();
    final colorThemes = Theme.of(context).colorScheme;
    var colorTheme = MediaQuery.of(context).platformBrightness;
    return GestureDetector(
      onTap: (() {
        FocusScope.of(context).unfocus();
      }),
      child: Scaffold(
          appBar: AppBar(
            leadingWidth: 500,
            toolbarHeight: 30,
            leading: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Explore',
                    style: GoogleFonts.elsieSwashCaps(
                        fontSize: 24,
                        color:colorTheme == Brightness.dark ?
                        Constants.scaffoldBackgroundlightTheme:
                        Constants.scaffoldBackgrounddarkTheme ,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  '.',
                  style: GoogleFonts.elsieSwashCaps(
                      fontSize: 30,
                      color: colorThemes.error,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorThemes.secondary,
                  ),
                  child: Theme.of(context).brightness == Brightness.dark
                      ? IconButton(
                          onPressed: countriesViewModel.turnOnLightMode,
                          icon: Icon(
                            Icons.dark_mode_sharp,
                            color: colorThemes.surface,
                            size: 25,
                          ),
                        )
                      : IconButton(
                          onPressed: countriesViewModel.turnOnDarkMode,
                          color: colorThemes.surface,
                          icon: const Icon(Icons.light_mode, size: 25),
                        ),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: RefreshIndicator(
                strokeWidth: 4.0,
                backgroundColor: Colors.cyan,
                onRefresh: () => countriesViewModel.getCountries(),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ListView(
                    primary: true,
                    children: [
                      SearchInputPanel(
                        text: countriesViewModel.query,
                        onchanged: (value) =>
                            countriesViewModel.searchCountry(value),
                      ),
                      addVerticalSpace(10.sp),
                      _iconRow(context),
                      addVerticalSpace(15.sp),
                      _ui(countriesViewModel, context)
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }

  _iconRow(BuildContext context) {
    var theme = MediaQuery.of(context).platformBrightness;

    var size = MediaQuery.of(context).size;
    CountriesViewModel countriesViewModel = CountriesViewModel();

    return Row(
      children: [
        Card(
          color: theme == Brightness.dark
              ? Constants.scaffoldBackgrounddarkTheme
              : Colors.grey[200],
          // width: 50.sp,
          // height: 30.sp,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.language,
                    size: 30,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      constraints: BoxConstraints.expand(),
                      enableDrag: true,
                      backgroundColor: theme == Brightness.dark
                          ? Constants.scaffoldBackgrounddarkTheme
                          : Constants.scaffoldBackgroundlightTheme,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      context: context,
                      builder: ((context) {
                        return SingleChildScrollView(
                          physics: AlwaysScrollableScrollPhysics(),
                          child: Container(
                            height: 500.h,

                            child: ListTile(
                              leading: Text('Language'),
                              trailing: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.close)),
                            ),
                            // addVerticalSpace(10.sp),
                          ),
                        );
                      }),
                    );
                  },
                ),
                addHorizontalSpace(10.sp),
                FittedBox(
                  child: Text(
                    'en'.toUpperCase(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Card(
          borderOnForeground: true,
          color: theme == Brightness.dark
              ? Constants.scaffoldBackgrounddarkTheme
              : Colors.grey[200],
          // height: 30.sp,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      constraints: BoxConstraints.expand(),
                      backgroundColor: theme == Brightness.dark
                          ? Constants.scaffoldBackgrounddarkTheme
                          : Constants.scaffoldBackgroundlightTheme,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      context: context,
                      builder: ((context) {
                        return ShowBottomUi();
                      }),
                    );
                  },
                  icon: Icon(Icons.filter_list_sharp),
                  iconSize: 25,
                ),
                addHorizontalSpace(10.sp),
                FittedBox(
                  child: Text(
                    'Filter',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _ui(CountriesViewModel countriesViewModel, context) {
    var size = MediaQuery.of(context).size;
    if (countriesViewModel.isLoading) {
      return AppLoading();
    }
    if (countriesViewModel.countryError != null) {
      return ApiError(
        errortxt: countriesViewModel.countryError!.message.toString(),
      );
    }
    return SizedBox(
      height: size.height,
      width: size.width,
      child: ListView.builder(
        itemCount: countriesViewModel.countriesModel!.length,
        primary: true,
        itemBuilder: ((context, index) {
          CountriesModel countriesModel =
              countriesViewModel.countriesModel![index];
          return ListTile(
            leading: Container(
              height: 30.w,
              width: 30.w,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('${countriesModel.flags!.png}'),
                ),
              ),
            ),
            title: Text('${countriesModel.name!.common}'),
            subtitle: Text(countriesModel.capital
                .toString()
                .replaceAll('[', '')
                .replaceAll(']', '')),
            onTap: () async {
              countriesViewModel.setSelectedCountry(countriesModel);
              openCountryDetails(context);
            },
          );
        }),
      ),
    );
  }
}
