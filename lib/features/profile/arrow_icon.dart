import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../app_colors.dart';

class ArrowIcon extends StatelessWidget{
  Function onTap;
  bool direction;
  ArrowIcon({required this.direction,required this.onTap});
  @override
  Widget build(BuildContext context) {

    return direction? CircleAvatar(
      backgroundColor: AppColors.transperantwhiteColor,
      radius: 15,
      child: IconButton(
        icon: Icon(
          Icons.arrow_forward_ios,
          color: Colors.white,
          size: 15,
        ),
        onPressed: onTap(),
      ),
    ):CircleAvatar(
      backgroundColor: AppColors.transperantwhiteColor,
      radius: 15,
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 15,
        ),
        onPressed: ()=>onTap,
      ),
    );
  }
}