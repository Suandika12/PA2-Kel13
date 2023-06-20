import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nsfutsal/core/service_locator.dart';
import 'package:nsfutsal/features/splash/domain/usecase/check_user_login_status.dart';
// import 'package:nsfutsal/routes/app_routers.gr.dart';
import 'package:nsfutsal/shared/theme.dart';

import '../../../routes/app_routers.gr.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        serviceLocator<CheckUserLoginStatus>()
            .checkIfUserLoggedIn()
            .then((isUserLoggedIn) {
          AutoRouter.of(context).pushAndPopUntil(
            isUserLoggedIn ? const LapanganGuestScreen() : const LoginScreen(),
            predicate: (_) => false,
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SizedBox(
                height: 300,
                width: 300,
                child: Image(
                  image: AssetImage('assets/images/logosplash.png'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(
                width: 200.0,
                child: LinearProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
