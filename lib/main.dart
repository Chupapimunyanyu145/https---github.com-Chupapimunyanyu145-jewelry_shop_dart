// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewelry_shop_dart/pages/login/login_page.dart';
import 'package:jewelry_shop_dart/state/app_state/app_state_cubit.dart';
// import 'firebase_options.dart';
// import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AppStateCubit())
      ],
      child: 
        MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Jewelry Shop App',
          theme: buildThemeData(),
          home: LogInPage()
        ),
    );
  }

  ThemeData buildThemeData() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
    );
  }
}
