import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:todo_employee/core/providers/auth_provider.dart';
import 'package:todo_employee/core/providers/providers_list.dart';
import 'package:todo_employee/core/themes/themes.dart';
import 'package:todo_employee/routes/routes.dart';
import 'package:todo_employee/screens/allscreen.dart';
import 'core/database/database_configs.dart';
import 'core/services/dependecyInjection.dart';
import 'env/env_configs.dart';

void main() async {
  envConfig();
  serviceLocators();
  WidgetsFlutterBinding.ensureInitialized();
  await hiveInitalSetup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return NeumorphicTheme(
      theme: NeumorphicThemeData(
        baseColor: Colors.transparent, //_commonBgColor
        shadowLightColor: Colors.white,
        shadowDarkColor: Color(0xffd1d9e6),
        shadowLightColorEmboss: Colors.white,
        shadowDarkColorEmboss: Color(0xffd1d9e6),
        intensity: 1,
        lightSource: LightSource.topLeft,
        depth: 5,
      ),
      child: MultiProvider(
        providers: providers(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: themes(),
            routes: routes(),
            home: DashboardScreen()),
      ),
    );
  }
}

// Consumer<AuthProvider>(
//             builder: (ctx, _authProvider, _) {
//               _authProvider.acessOTPData();
//               _authProvider.acessUserData();
//               return _authProvider.isUserAuthTOHome
//                   ? DashboardScreen()
//                   : LoginScreen();
//             },
//           ),
