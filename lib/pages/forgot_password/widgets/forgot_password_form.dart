// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, avoid_print, unused_field

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/pages/login/login_page.dart';
import 'package:jewelry_shop_dart/widgets/custom_button.dart';
import 'package:jewelry_shop_dart/widgets/email_text_filed.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  String _email = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
          children: [
            buildDescriptionsLabel(),
            SizedBox(height: 40),
            buildEmailTextField(),
            SizedBox(height: 40),
            buildSendButton()
          ],
        )
      );
  }

  Widget buildDescriptionsLabel() {
    return Text("Пожалуйста введите ваш адрес электронной почты, чтобы мы могли отправить вам письмо с ссылкой для смены пароля.",
          style: TextStyle(fontSize: 16)
          );
  }

  Widget buildEmailTextField() {
    return EmailTextField(
      emailController: _emailController,
      onSaved: (value) => setState(() =>_email = value!),
    );
  }

  Widget buildSendButton() {
    return SizedBox(
      width: double.infinity,
      child: CustomButton(
        title: "ОТПРАВИТЬ", 
        onPressed: () {
          _onSendButtonPressed();
        }
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  _onSendButtonPressed() {
      if(_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const LogInPage()));
      
      }
    }
}
