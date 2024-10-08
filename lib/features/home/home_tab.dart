import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:space_app/app_colors.dart';
import 'package:space_app/planets_info.dart';
import 'package:space_app/planets_details/planet_details_screen.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {

  PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          'Space',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi Sara,',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Which planet would you like to explore?',
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            SizedBox(height: 200),


            Center(
              child: Container(
                width: 180,
                height: 180,
                child: Stack(
                  children: [
                    PageView.builder(
                      controller: pageController,
                      itemCount: PlanetsInfo.imagePaths.length,
                      itemBuilder: (context, index) {
                        return Image.asset(PlanetsInfo.imagePaths[index],
                            fit: BoxFit.cover);
                      },
                      onPageChanged: (index) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.transperantwhiteColor,
                  radius: 15,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: previousImage,
                  ),
                ),
                Column(
                  children: [
                    Text(
                     PlanetsInfo.planetNames[currentIndex],
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    Text(
                      PlanetsInfo.planetDiscribtion[currentIndex],
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.babyBlueColor,
                          fontFamily: "PressStart2P"),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: AppColors.transperantwhiteColor,
                  radius: 15,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                    onPressed: nextImage,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),


            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.transperantwhiteColor,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PlanetDetailsScreen(
                      planetName: PlanetsInfo.planetNames[currentIndex],
                      imagePath: PlanetsInfo.imagePaths[currentIndex],
                      planetDescribtion: PlanetsInfo.planetDiscribtion[currentIndex],
                      planetDetails: PlanetsInfo.planetDetails[currentIndex],
                    ),
                  ),
                );
              },
              child: Text(
                'Explore Planet',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),


          ],
        ),
      ),
    );
  }



  void previousImage() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
      });
    }
    pageController.animateToPage(
      currentIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void nextImage() {
    if (currentIndex < PlanetsInfo.imagePaths.length - 1) {
      setState(() {
        currentIndex++;
      });
    }
    pageController.animateToPage(
      currentIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

}
