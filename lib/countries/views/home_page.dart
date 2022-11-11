// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng_stage_3_task/components/app_loading.dart';
import 'package:hng_stage_3_task/components/helper_tools.dart';
import 'package:hng_stage_3_task/components/search_input_panel.dart';
import 'package:hng_stage_3_task/utils/navigation_utils.dart';
import 'package:provider/provider.dart';
import '../../utils/constants.dart';
import '../model/contries_model.dart';
import '../view_models/countries_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    CountriesViewModel countriesViewModel = context.watch<CountriesViewModel>();
    var theme = MediaQuery.of(context).platformBrightness;
    return Scaffold(
        // appBar: AppBar(

        //     title: Text(
        //       'Explore',
        //       style: TextStyle(
        //           color: theme == Brightness.dark
        //               ? Constants.scaffoldBackgroundlightTheme
        //               : Constants.scaffoldBackgrounddarkTheme,
        //           fontSize: 30.sp,
        //           fontWeight: FontWeight.w600,
        //           fontFamily: 'Poppins'),
        //     ),
        //     actions: [
        //       Icon(
        //         Icons.mode,
        //         size: 30.sp,
        //         color: theme == Brightness.dark
        //             ? Constants.scaffoldBackgroundlightTheme
        //             : Constants.scaffoldBackgrounddarkTheme,
        //       ),
        //     ]),
        body: SafeArea(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: ListView(
            primary: true,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: theme == ThemeMode.dark
                        ? const Icon(Icons.mode_night_sharp)
                        : const Icon(Icons.light_outlined),
                  ),
                ],
              ),
              addVerticalSpace(24.sp),
               SearchInputPanel(
                editingController: controller,
                onchanged: null,
              ),
              addVerticalSpace(10.sp),
              _iconRow(context),
              addVerticalSpace(15.sp),
              _ui(countriesViewModel, context)
            ],
          ),
        ),
      ),
    ));
  }

  _iconRow(BuildContext context) {
    var theme = MediaQuery.of(context).platformBrightness;
    return Row(
      children: [
        Card(
          color: theme == Brightness.dark
              ? Constants.scaffoldBackgrounddarkTheme
              : Colors.grey[200],
          // width: 50.sp,
          // height: 30.sp,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.language,
                  size: 30,
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
          // width: 50.sp,
          // height: 30.sp,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.language,
                  size: 30,
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
      return Container();
    }
    return SizedBox(
      height: size.height,
      width: size.width,
      child: ListView.builder(
        itemCount: countriesViewModel.countriesModel.length,
        primary: true,
        itemBuilder: ((context, index) {
          CountriesModel countriesModel =
              countriesViewModel.countriesModel[index];
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
