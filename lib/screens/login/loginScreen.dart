import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:todo_employee/core/functions/error_handler_func.dart';
import 'package:todo_employee/core/providers/auth_provider.dart';
import 'package:todo_employee/core/services/dependecyInjection.dart';
import 'package:todo_employee/screens/allscreen.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_textformfeild.dart';
import 'package:todo_employee/core/validators/validator.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  Validators _validators = locator<Validators>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void erorHandler(e) {
    errorHandler(e, _scaffoldKey);
  }

  Map<String, dynamic> _authData = {"mobNumber": "", "employeeId": ""};
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final buttonTextStyle = Theme.of(context)
        .primaryTextTheme
        .bodyText1
        .merge(TextStyle(fontWeight: FontWeight.w600));

    Future<void> otpSend() async {
      if (!_formKey.currentState.validate()) return null;
      _formKey.currentState.save();

      setState(() => _isLoading = true);

      final _authProvider = Provider.of<AuthProvider>(context, listen: false);
      await _authProvider
          .otpSend(
              mobNumber: _authData["mobNumber"],
              employeeId: _authData["employeeId"])
          .catchError(erorHandler);

      setState(() => _isLoading = false);
      print(_authProvider.isOTPWorked);
      if (_authProvider.isOTPWorked)
        Navigator.pushNamed(context, OtpScreen.routeName);
    }

    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset("assets/images/login.png"),
                CustomTextFormFeild(
                  width: screenWidth * 0.9,
                  hintText: 'EMPLOYEE ID',
                  keyboardType: TextInputType.text,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  textStyle: Theme.of(context).primaryTextTheme.bodyText2,
                  onSaved: (_val) {
                    _authData["employeeId"] = _val;
                  },

                  autoFillHints: [AutofillHints.telephoneNumber],

                  // onFieldSubmitted: onFeildSubmit,
                ),
                const SizedBox(height: 20),
                CustomTextFormFeild(
                  width: screenWidth * 0.9,
                  hintText: 'MOBILE NUMBER',
                  keyboardType: TextInputType.phone,
                  inputFormatters: [LengthLimitingTextInputFormatter(10)],
                  textStyle: Theme.of(context).primaryTextTheme.bodyText2,
                  onSaved: (_val) {
                    _authData["mobNumber"] = _val;
                  },
                  validators: _validators.phoneNumberCheck,
                  autoFillHints: [AutofillHints.telephoneNumber],
                  // onFieldSubmitted: onFeildSubmit,
                ),
                const SizedBox(height: 20),
                _isLoading
                    ? CircularProgressIndicator()
                    : CustomButton(
                        text: 'SUBMIT',
                        textStyle: buttonTextStyle,
                        onPressed: otpSend,
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
