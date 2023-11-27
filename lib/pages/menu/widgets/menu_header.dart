// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';

class MenuHeader extends StatelessWidget {
  const MenuHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTitle(),
          SizedBox(height: 20),
          Row(
            children: [
              buildIconProfile(),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text(
                      'Никита Ивлев',
                         style: TextStyle(
                         fontWeight: FontWeight.w600,
                         fontSize: 20
                        ),              
                     ),
                    Text(
                     'ivlevnikitos145@mail.com',
                      style: TextStyle(
                      color: AppColors.gray1,
                      fontWeight: FontWeight.normal,
                      fontSize: 18
                      ),              
                    )          
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }

  Widget buildTitle() {
    return Row(
      children: [
        Text(
            'Ваш аккаунт',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32
            ),
          ),
      ],
    );
  }

  Widget buildIconProfile() {
  return  Icon( 
    size: 70,
    Icons.account_circle_outlined,
    );
  }
}