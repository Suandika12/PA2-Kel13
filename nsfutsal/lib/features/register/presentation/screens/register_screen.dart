import 'package:nsfutsal/routes/app_routers.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsfutsal/constants/form_messages.dart';

import 'package:flutter/services.dart';

import '../../../../constants/colors.dart';
import '../../../../shared/theme.dart';
import '../bloc/register_bloc.dart';
import '../bloc/register_event.dart';
import '../bloc/register_state.dart';
import '../shared/custom_filled_button.dart';
import '../../data/models/user_model.dart';

// this is the login page
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static const String routeName = '/register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isAlpha(String? value) {
    if (value == null) {
      return false;
    }
    final alphaRegex = RegExp(r'^[a-zA-Z]+$');
    return alphaRegex.hasMatch(value);
  }

  bool _isNumeric(String? value) {
    if (value == null) {
      return false;
    }
    return double.tryParse(value) != null;
  }

  String paswordFieldSuffixText = "Show";
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneNumberController = TextEditingController();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool obsecureText = true;
  IconData icon = Icons.visibility;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            if (state is RegisterLoadedState) {
              // Show success alert dialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Registration Successful'),
                    content: const Text(
                        'Your account has been registered successfully.'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.of(context).pop();
                          AutoRouter.of(context).pushAndPopUntil(
                            const LoginScreen(),
                            predicate: (_) => false,
                          );
                        },
                      ),
                    ],
                  );
                },
              );
            } else if (state is RegisterErrorState) {
              // Show error alert dialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Email already registered'),
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
            if (state is RegisterLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 900,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bglogin2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 190),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Register Account",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Form(
                          key: _formKey,
                          child: Column(children: [
                            // name input
                            TextFormField(
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                labelText: "Name",
                                labelStyle: TextStyle(color: white),
                                hintStyle: TextStyle(color: white),
                                hintText: "Enter your name",
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
                                  return 'Please enter your name';
                                } else if (!_isAlpha(value)) {
                                  return 'Please enter a valid name';
                                }
                                return null;
                              },
                              controller: _nameController,
                              onSaved: (value) => _nameController.text = value!,
                            ),

                            const SizedBox(height: 10),
                            // email input
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: "Email",
                                labelStyle: TextStyle(color: white),
                                hintStyle: TextStyle(color: white),
                                hintText: "Enter your email",
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
                            //phone input
                            TextFormField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                labelText: "Phone",
                                labelStyle: TextStyle(color: white),
                                hintText: "Enter your phone number",
                                hintStyle: TextStyle(color: white),
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
                              maxLength: 12,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(
                                    r'[0-9]')), // Hanya memperbolehkan angka
                                LengthLimitingTextInputFormatter(
                                    12), // Batasi input menjadi 12 karakter
                              ],
                              style: const TextStyle(
                                  color: Colors
                                      .white), // Set the input text color to white
                              validator: (newPhoneNumber) {
                                if (newPhoneNumber!.isEmpty) {
                                  return kPhoneNumberNullError;
                                } else if (newPhoneNumber.length != 12) {
                                  return 'Phone number must be 12 digits';
                                }
                                return null;
                              },
                              controller: _phoneController,
                              onSaved: (value) =>
                                  _phoneController.text = value!,
                            ),

                            const SizedBox(height: 10),
                            //password input
                            TextFormField(
                              controller: _passwordController,
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: _obscureText,
                              decoration: InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(color: white),
                                hintStyle: TextStyle(color: white),
                                hintText: "Enter your password",
                                suffixIcon: TextButton(
                                  child: Text(
                                    paswordFieldSuffixText,
                                    style: const TextStyle(
                                        color: lightPrimaryColor),
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
                              style: const TextStyle(
                                  color: Colors
                                      .white), // Set the input text color to white
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

                            const SizedBox(height: 30),
                            CustomFilledButton(
                              gradient: gradient,
                              width: 200,
                              text: "Register",
                              onPressed: _register,
                            ),
                          ]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextButton(
                              onPressed: _showLoginPage,
                              child: Text(
                                "Login",
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
            );
          },
        ),
      ),
    );
  }

  void _showLoginPage() {
    AutoRouter.of(context).replace(const LoginScreen());
  }

  void _register() {
    if (_formKey.currentState!.validate()) {
      BlocProvider.of<RegisterBloc>(context).add(
        RegisterEvent.onRegisterTapped(
          user: User(
            email: _emailController.text,
            password: _passwordController.text,
            phone: _phoneController.text,
            name: _nameController.text,
          ),
        ),
      );
    }
  }
}
