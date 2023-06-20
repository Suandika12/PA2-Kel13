import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../constants/colors.dart';
import '../../../../routes/app_routers.gr.dart';
import '../../../../shared/theme.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_states.dart';
import '../shared/custom_filled_button.dart';
import '../../data/models/user_model.dart';

// this is the login page
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = '/login';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String paswordFieldSuffixText = "Show";
  bool _obscureText = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  IconData icon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        body: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginLoadedState) {
              // Show success alert dialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Login Success'),
                    content: const Text('Login successfully.'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          AutoRouter.of(context).pushAndPopUntil(
                            const LapanganScreen(),
                            predicate: (_) => false,
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            } else if (state is LoginErrorState) {
              // Show error alert dialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Login Error'),
                    content: const Text('wrong username or password.'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            }
          },
          builder: (context, state) {
            if (state is LoginLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Container(
              height: 1000,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bglogin2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(0.20),
                      child: SizedBox(
                        height: 300,
                        width: 300,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Selamat Datang di NSfutsal",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Banyak aneka snack yang lezat untuk jam kosong ",
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              color: white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Form(
                            key: _formKey,
                            child: Column(children: [
                              // email input
                              TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  labelStyle: TextStyle(color: white),
                                  hintText: "Enter your email",
                                  hintStyle: const TextStyle(
                                      color: Color.fromARGB(255, 255, 255,
                                          255)), // Set the hint text color to white
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .white), // Warna garis saat tidak dalam fokus
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .white), // Warna garis saat dalam fokus
                                  ),
                                ),
                                style: const TextStyle(
                                    color: Colors
                                        .white), // Set the input text color to white
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  } else if (!value.contains('@')) {
                                    return 'Please enter a valid email';
                                  }
                                  return null;
                                },
                                controller: _emailController,
                                onSaved: (value) =>
                                    _emailController.text = value!,
                              ),

                              const SizedBox(height: 10),
                              // password input
                              TextFormField(
                                controller: _passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  labelStyle: TextStyle(color: white),
                                  hintText: "Enter your password",
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  suffixIcon: TextButton(
                                    child: Text(
                                      paswordFieldSuffixText,
                                      style: const TextStyle(
                                        color: lightPrimaryColor,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                        paswordFieldSuffixText =
                                            (paswordFieldSuffixText == "Show")
                                                ? "Hide"
                                                : "Show";
                                      });
                                    },
                                  ),
                                  enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .white), // Warna garis saat tidak dalam fokus
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors
                                            .white), // Warna garis saat dalam fokus
                                  ),
                                ),
                                style: const TextStyle(color: Colors.white),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  } else if (value.length < 6) {
                                    return 'Password must be at least 6 characters';
                                  }
                                  return null;
                                },
                                onSaved: (value) =>
                                    _passwordController.text = value!,
                              ),

                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: _showForgotPasswordPage,
                                    child: Text(
                                      "",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Poppins',
                                        color: chocolate,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              CustomFilledButton(
                                gradient: gradient,
                                width: 200,
                                text: "Login",
                                onPressed: _login,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: _showRegisterPage,
                                child: Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: cyan,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Login as Guest",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                onPressed: _showGuestPage,
                                child: Text(
                                  "Guest",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: cyan,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _showForgotPasswordPage() {
    // AutoRouter.of(context).push(const ForgotPasswordRoute());
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<LoginBloc>(context).add(
        LoginEvent.onLoginTapped(
          user: User(
            email: _emailController.text,
            password: _passwordController.text,
          ),
        ),
      );
    }
  }

  void _googleLogin() {
    BlocProvider.of<LoginBloc>(context).add(
      const LoginEvent.onGoogleLoginTapped(),
    );
  }

  void _facebookLogin() {
    BlocProvider.of<LoginBloc>(context).add(
      const LoginEvent.onFacebookLoginTapped(),
    );
  }

  void _showGuestPage() {
    AutoRouter.of(context).push(const LapanganGuestScreen());
  }

  void _showRegisterPage() {
    AutoRouter.of(context).push(const RegisterScreen());
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}
