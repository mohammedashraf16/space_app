import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/app_colors.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final String planetName;
  final String imagePath;
  final String planetDescribtion;
  final String planetDetails;

  PlanetDetailsScreen(
      {required this.planetName,
      required this.imagePath,
      required this.planetDescribtion,
      required this.planetDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.secondaryColor],
          begin: Alignment.topLeft,
        ),
      ),
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100),
                  Text(
                    planetName,
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    planetDescribtion,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        planetDetails,
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -20,
            left: 300,
            child: Image(
              image: AssetImage(imagePath),
            ),
          ),
        ],
      ),
    );
  }
}
