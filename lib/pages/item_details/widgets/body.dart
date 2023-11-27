// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, dead_code, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jewelry_shop_dart/models/item.dart';
import 'package:jewelry_shop_dart/state/app_state/app_state_cubit.dart';
import 'package:jewelry_shop_dart/theme/app_color.dart';
import 'package:jewelry_shop_dart/widgets/custom_button.dart';

import 'specifications_widget.dart';

class Body extends StatefulWidget {
  final Item item;

  const Body({
    super.key,
    required this.item
  });

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late Item item;
  
  @override
  void initState() {
    setState(() {
      item = widget.item;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: [
              buildImage(),
              buildItemContent()
            ],
          ),
        ),
        buildAddToCartButton(),
      ],
    );
  }

  Widget buildImage() {
    return Image.network(
      item.image,
      height: MediaQuery.of(context).size.height * 0.4,
      width: double.infinity,
    );
  }

 Widget buildItemContent() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: buildNameLabel(),
            ),
            buildFavoriteIcon(),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildPriceLabel(),
          ],
        ),
        buildDivider(),
        buildDescriptionLabel(),
        SpecificationsWidget(specifications: item.specifications),
      ],
    ),
  );
}

 Widget buildDescriptionLabel() {
   return Text(
        item.descriptions,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 22
        ),
      );
 }

 Widget buildDivider() {
   return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Divider(thickness: .5),
      );
 }

  Widget buildFavoriteIcon() {
  return GestureDetector(
    onTap: onFavoritePressed,
    child: Icon(
      item.isFavorite ? Icons.favorite : Icons.favorite_border,
      size: 45,
    ),
  );
}

  Widget buildNameLabel() {
    return Text(
            item.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:32
            ),
          maxLines: 2,
          );
  }

  Widget buildPriceLabel() {
    return Text(
            '${item.price}p',
            style: TextStyle(
              color: AppColors.gray1,
              fontWeight: FontWeight.w400,
              fontSize:28
            ),
          maxLines: 2,
          );
  }
  
  buildAddToCartButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 25, top: 15),
      width: double.infinity,
      child: CustomButton(
        title: 'ДОБАВИТЬ В КОРЗИНУ',
         onPressed: () {
          _addToCart();
        },
      ),
    );
  }

  _addToCart() {
    context.read<AppStateCubit>().addItem(context, item);
  }

  void onFavoritePressed() {
    setState(() {
      item = item.copyWith(isFavorite: !item.isFavorite);      
    });

    context.read<AppStateCubit>().updateFavorites(context, item);
  }
}
