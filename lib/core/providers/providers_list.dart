import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:todo_employee/core/providers/auth_provider.dart';
import 'attendance_provider.dart';

List<SingleChildWidget> providers() => [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
      // ChangeNotifierProvider(create: (_) => AttndanceProvider()),
    ];
