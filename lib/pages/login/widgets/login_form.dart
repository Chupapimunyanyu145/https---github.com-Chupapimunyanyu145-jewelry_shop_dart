// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, 

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/forgot_password/forgot_password_page.dart';
import 'package:jewelry_shop_dart/pages/home/home_page.dart';
import 'package:jewelry_shop_dart/pages/signup/signup_page.dart';
import 'package:jewelry_shop_dart/widgets/custom_button.dart';
import 'package:jewelry_shop_dart/widgets/email_text_filed.dart';
import 'package:jewelry_shop_dart/widgets/password_text_field.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    String _email = "";
    String _password = "";

  @override
  Widget build(BuildContext context) {
    return Form(
    key: _formKey,
      child: Flexible(
        child: Column(
          children: [
            SizedBox(height: 30),
            EmailTextField(
              emailController: _emailController,
              onSaved: (value) => setState(() => _email = value!)
            ),
            SizedBox(height: 20),
            PasswordTextField(
              passwordController: _passwordController,
              labelText: 'Пароль',
              onSaved: (value) => setState(() => _password = value!),
            ),
            SizedBox(height: 100),
            buildLogInButton(),
            SizedBox(height: 25),
            buildForgotPasswordLabel(),
            Spacer(),
            buildSignUpButton(),
            SizedBox(height: 20),
          ],
        ),
      )
    );
  }

  Widget buildLogInButton(){
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        title: 'ВХОД',
        onPressed: _onLogInButtonPressed
      ),
    );
  }


  Widget buildForgotPasswordLabel() {
    return GestureDetector(
      onTap: _onForgotPasswordLabel,
      child: Text(
            'Забыли пароль?', 
            style: TextStyle(fontSize: 17),
          ),
    );
  }

  Widget buildSignUpButton() {
    return GestureDetector(
      onTap: _onSignUpButtonPressed,
      child: Text(
        'Если у вас не аккаунта, вы можете зарегистрироваться',
        style: TextStyle(fontSize: 17),
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  _onLogInButtonPressed(){
    if(_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

        print('email $_email');
        print('password $_password');

        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => HomePage()),
        );
    }
  }

  void _onForgotPasswordLabel() {
      Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const ForgotPasswordPage())
    );  
    }

  void _onSignUpButtonPressed(){
      Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const SignUpPage())
    );
  }
}