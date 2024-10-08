import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/app_colors.dart';

class RocketTab extends StatelessWidget{
  // static const String routName= 'ExplorScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,

      body:  Padding(
        padding: const EdgeInsets.all(15),
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text('Explore\nspace',style: Theme.of(context).textTheme.headlineLarge,textAlign:TextAlign.start,),
          Image.asset('assets/images/explore_space.png')
        ],),
      ),
    );
  }
}