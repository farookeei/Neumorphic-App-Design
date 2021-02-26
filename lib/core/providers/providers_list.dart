import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todo_employee/core/providers/auth_provider.dart';
import 'package:todo_employee/core/providers/daily_login_provider.dart';
import 'attendance_provider.dart';

List<SingleChildWidget> providers() => [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
      dailyloginProvider()
      // ChangeNotifierProvider(create: (_) => AttndanceProvider()),
    ];

ChangeNotifierProxyProvider<AuthProvider, DailyLoginProvider>
    dailyloginProvider() {
  return ChangeNotifierProxyProvider<AuthProvider, DailyLoginProvider>(
      create: null,
      update: (ctx, _authProvider, _dailyLoginProvider) =>
          DailyLoginProvider(_authProvider.userData));
}
