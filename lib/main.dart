import 'package:flutter/material.dart' hide Router;
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hng_stage_3_task/countries/view_models/countries_view_model.dart';
import 'package:hng_stage_3_task/route_folder/route.dart';
import 'package:hng_stage_3_task/utils/themes.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]).then(
    (_) => runApp(
      ScreenUtilInit(
        designSize: const Size(428, 926),
        splitScreenMode: true,
        minTextAdapt: true,
        builder: (BuildContext context, Widget? child) => const MyApp(),
      ),
    ),
  );
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountriesViewModel(),
      child: MaterialApp(
        title: 'Countries',
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        darkTheme: CustomThemes.darkTheme,
        theme: CustomThemes.lightTheme,
        onGenerateRoute: Router.generateRoute,
// localizationsDelegates: [
//     GlobalMaterialLocalizations.delegate,
//     GlobalWidgetsLocalizations.delegate,
//     GlobalCupertinoLocalizations.delegate,
//   ],
//   supportedLocales: [
//     Locale('en', ''), // English, no country code
//     Locale('es', ''), // Spanish, no country code
//   ],
//         // home: const HomePage(),
      ),
    );
  }
}
