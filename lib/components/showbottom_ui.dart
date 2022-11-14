import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng_stage_3_task/components/helper_tools.dart';
import 'package:provider/provider.dart';

import '../countries/model/contries_model.dart';
import '../countries/model/country_model.dart';
import '../countries/view_models/countries_view_model.dart';
import '../utils/constants.dart';

class ShowBottomUi extends StatelessWidget {
  const ShowBottomUi({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    //  var height = 30;
    CountriesViewModel countriesViewModel = context.watch<CountriesViewModel>();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisSize: MainAxisSize.max, children: [
          addVerticalSpace(10.sp),
          ExpansionTile(
            title: Text('Filter', style: Constants.filterTextStyle),
            trailing: IconButton(
              icon: Icon(Icons.close),
              onPressed: (() {
                Navigator.pop(context);
              }),
            ),
            // children: [],
          ),

          //  addVerticalSpace(23),
          ExpansionTile(
              title: Text('Continent', style: Constants.filterTextStyle),
              children: [
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: ListView.builder(
                    primary: true,
                    itemBuilder: ((context, index) {
                      CountriesModel countriesModel =
                          countriesViewModel.countriesModel![index];
                      var cont = countriesViewModel
                          .countriesModel![index].continents!
                          .toSet()
                          .toList();
                      // var continent = Set<CountriesModel>();
                      // List<CountriesModel> continents = countriesViewModel
                      //     .countriesModel
                      //     .where((data) => continent.add(data))
                      //     .toList();
                      // print(continents);
                      // var continentSet = {
                      //   ...{countriesModel.continents},}
                      // List<CountriesModel> continetSet = countriesModel.continents!.toSet();                  ;

                      print('${countriesModel.continents.toString()}');
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ListTile(
                            leading: Text(
                                '${cont.toString().replaceAll('[Continent.', '').replaceAll(']', '')}'),
                            trailing:
                                Checkbox(value: false, onChanged: (value) {}),
                          ),
                        ],
                      );
                    }),
                    itemCount: countriesViewModel.countriesModel!.length,
                  ),
                )
              ]),

          ExpansionTile(
            title: Text('Time Zone', style: Constants.filterTextStyle),
            children: [
              SizedBox(
                height: size.height,
                width: size.width,
                child: ListView.builder(
                  itemCount: countriesViewModel.countriesModel!.length,
                  primary: true,
                  itemBuilder: ((context, index) {
                    CountriesModel countriesModel =
                        countriesViewModel.countriesModel![index];
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ListTile(
                          leading: Text(
                              '${countriesModel.timezones.toString().replaceAll('[', '').replaceAll(']', '')}'),
                          trailing:
                              Checkbox(value: false, onChanged: (value) {}),
                        ),
                      ],
                    );
                  }),
                ),
              )
            ],
          ),
          Container(
      margin: EdgeInsets.only(left: 12),
      child: Row(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
         //   backgroundColor: Constants.scaffoldBackgrounddarkTheme,
            padding: EdgeInsets.symmetric(horizontal:18, vertical: 10),
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 30, 
                 fontStyle: FontStyle.normal),
          ),
            onPressed: (){},
            child: Text('Resets',
            style: TextStyle(fontSize: 20, color: Colors.white),),
          ),
          //  Text(text, style: Constants.filterTextStyle),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            padding: EdgeInsets.symmetric(horizontal:18, vertical: 10),
            textStyle: const TextStyle(
                color: Colors.white,
                 fontSize: 30, 
                 fontStyle: FontStyle.normal),
          ),
            onPressed: (){},
            child: Text('Show Results'),
          ),
          //  IconButton(onPressed: onPressed, icon: icon),
        ],
      ),
    )]))
    );
    
  }
}
