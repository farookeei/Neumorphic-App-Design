import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_employee/core/functions/error_handler_func.dart';
import 'package:todo_employee/core/providers/auth_provider.dart';
import 'package:todo_employee/screens/allscreen.dart';
import 'package:todo_employee/widgets/custom_appbar.dart';
import 'package:todo_employee/widgets/custom_btn.dart';
import 'package:todo_employee/widgets/custom_pincode.dart';

class OtpScreen extends StatefulWidget {
  static const routeName = '/otp-screen';

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String _otp;
  bool _islLoading = false;
  bool _resendLoading = false;

  bool _isInital = true;
  String _userPhoneNumber;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void erorHandler(e) {
    errorHandler(e, _scaffoldKey);
  }

  Future<void> acessInitalData() async {
    _userPhoneNumber =
        Provider.of<AuthProvider>(context, listen: false).otpData.mobileNumber;
    // Provider.of<LocationProvider>(context, listen: false)
    //     .fetchCityFromServers();
  }

  Future<void> submit() async {
    if (!_formKey.currentState.validate()) return null;
    _formKey.currentState.save();
    setState(() {
      _islLoading = true;
    });
    final _authProvider = Provider.of<AuthProvider>(context, listen: false);
    await _authProvider.verifyOTP(otp: _otp);
    setState(() => _islLoading = false);
    if (_authProvider.otpVerificationStatus) {
      if (_authProvider.isPerviousUser) {
        print("previous user");
        if (_authProvider.isUserAuthTOHome) {
          Navigator.pop(context);
          Navigator.of(context).pushReplacementNamed(DashboardScreen.routeName);
        }
        return;
      }
    }
  }

  Future<void> resendOTP() async {
    final _authProvider = Provider.of<AuthProvider>(context, listen: false);
    String _mobNumber = _authProvider.otpData.mobileNumber;
    setState(() => _resendLoading = true);
    await _authProvider
        .otpSend(mobNumber: _mobNumber, employeeId: _authProvider.employeeID)
        .catchError;
    setState(() => _resendLoading = false);
  }

  void onComplete(String _val) {
    _otp = _val;

    submit();
  }

  @override
  void didChangeDependencies() {
    if (_isInital) {
      _isInital = false;
      acessInitalData();
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonTextStyle = Theme.of(context)
        .primaryTextTheme
        .bodyText1
        .merge(TextStyle(fontWeight: FontWeight.w600));
    return Scaffold(
      key: _scaffoldKey,
      appBar: customAppBar(),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/otp.png"),
            const SizedBox(height: 30),
            Text(
              'OTP SENT TO +91 $_userPhoneNumber',
              style: Theme.of(context).primaryTextTheme.caption,
            ),
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: CustomPincode(
                  width: double.infinity,
                  onChanged: (_val) => _otp = _val,
                  onComplete: onComplete,
                ),
              ),
            ),
            _resendLoading
                ? CircularProgressIndicator()
                : FlatButton(
                    onPressed: resendOTP,
                    child: Text('resend',
                        style: Theme.of(context).primaryTextTheme.bodyText2)),
            _islLoading
                ? CircularProgressIndicator()
                : CustomButton(
                    text: 'SUBMIT',
                    textStyle: buttonTextStyle,
                    onPressed: submit,
                  ),
          ],
        ),
      )),
    );
  }
}
