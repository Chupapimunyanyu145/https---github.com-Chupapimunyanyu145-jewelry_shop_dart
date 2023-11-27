// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print,, no_leading_underscores_for_local_identifiers, prefer_final_fields 

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/home/home_page.dart';
import 'package:jewelry_shop_dart/widgets/custom_button.dart';
import 'package:jewelry_shop_dart/widgets/email_text_filed.dart';
import 'package:jewelry_shop_dart/widgets/password_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final TextEditingController _nameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final TextEditingController _newPasswordController = TextEditingController();
    final TextEditingController _phoneController = TextEditingController();
    String _name = "";
    String _email = "";
    String _password = "";
    String _newPassword = "";
    String _phone = "";

  @override
  Widget build(BuildContext context) {
    return Form(
    key: _formKey,
      child: Flexible(
        child: Column(
          children: [
            SizedBox(height: 40),
            buildNameTextField(),
            SizedBox(height: 25),
            buildEmailTextField(),
            SizedBox(height: 25),
            buildPasswordTextField(),
            SizedBox(height: 25),
            buildNewPasswordTextField(),
            SizedBox(height: 25),
            buildPhoneTextField(),
            SizedBox(height: 40),
            buildSignUpButton(),
            SizedBox(height: 35),
            Text('Регистрируясь вы соглашаетесь с Условиями пользовательского соглашения',
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
            )
          ],
        ),
      )
    );
  }

  Widget buildPhoneTextField() {
    return TextFormField(
      controller: _phoneController,
      onSaved: (value) => setState(() => _phone = value!),
      decoration: InputDecoration(
        hintText: 'Номер телефона',
        labelStyle: TextStyle(fontSize: 18)
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Пожалуйста введите номер';
        }
        return null;
      },
      keyboardType: TextInputType.phone,
    );
  }

  Widget buildEmailTextField() {
    return EmailTextField(
            emailController: _emailController,
            onSaved: (value) => setState(() => _email = value!)
          );
  }

  Widget buildPasswordTextField() {
    return PasswordTextField(
            passwordController: _passwordController,
            labelText: 'Пароль',
            onChanged: (value) => setState(() => _password = value!),
          );
  }

  Widget buildNewPasswordTextField() {
    return PasswordTextField(
            passwordController: _newPasswordController,
            labelText: 'Повторите пароль',
            validator: (value) {
              print("$_password: $_newPassword");
              if (_password != _newPassword) {
                return 'Пароли не совпадают';
              }
              return null;
            },
            onChanged: (value) => setState(() => _newPassword = value!),
    );
  }

  Widget buildNameTextField() {
    return TextFormField(
      controller: _nameController,
      onSaved: (value) => setState(() => _name = value!),
      decoration: InputDecoration(
        hintText: 'Имя',
        labelStyle: TextStyle(fontSize: 18)
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Пожалуйста введите имя';
        }
        return null;
      },
    );
  }

  Widget buildSignUpButton(){
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        title: 'РЕГИСТРАЦИЯ',
        onPressed: _onSignUpButtonPressed
      ),
    );
    
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _newPasswordController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  _onSignUpButtonPressed(){
    if(_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

        print('name $_name');
        print('email $_email');
        print('password $_password');
        print('newPassword $_newPassword');
        print('phone $_phone');

      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => HomePage()),
        );
    }
  }
}
