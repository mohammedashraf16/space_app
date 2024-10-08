import 'package:flutter/material.dart';
import 'home_tab.dart';
import '../search/search_tab.dart';
import '../rocket_tab/rocket_tab.dart';
import '../saves/saves_tab.dart';
import '../profile/profile_tab.dart';
import 'package:space_app/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;


  List<Widget> tabs = [
    HomeTab(),
    SearchTab(),
    RocketTab(),
    SavesTab(),
    ProfileTab(),
  ];

  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(

            colors: [AppColors.primaryColor ,AppColors.secondaryColor],
            begin: Alignment.topLeft,
          )),
      child: Scaffold(
        backgroundColor: Colors.transparent,

        bottomNavigationBar: Container(

          color:selectedIndex == 2 ? Colors.black : Colors.transparent,

          padding: EdgeInsets.only(bottom: 18, left: 36, right: 36),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Theme(

              data:Theme.of(context).copyWith(canvasColor: AppColors.greyBlueColor),
              child: BottomNavigationBar(


                backgroundColor: AppColors.babyBlueColor,
                currentIndex: selectedIndex,
                onTap: onTabTapped,

                items: [
                  BottomNavigationBarItem(
                      label: '',
                      icon:selectedIndex==0? CircleAvatar(backgroundColor:AppColors.whiteColor,child:Image.asset('assets/images/selected_home.png',fit: BoxFit.cover,)):ImageIcon(AssetImage('assets/images/icon_home.png'))),
                  BottomNavigationBarItem(
                      label: '',
                      icon: selectedIndex==1?CircleAvatar(backgroundColor:AppColors.whiteColor,child:Image.asset('assets/images/selected_search.png',fit: BoxFit.cover,)): ImageIcon(AssetImage('assets/images/icon_search.png'))),
                  BottomNavigationBarItem(
                      label: '',
                      icon:selectedIndex==2?CircleAvatar(backgroundColor:AppColors.whiteColor,child:Image.asset('assets/images/selected_rocket.png',fit: BoxFit.cover,)): ImageIcon(AssetImage('assets/images/icon_rocket.png'))),
                  BottomNavigationBarItem(
                      label: '',
                      icon:selectedIndex==3?CircleAvatar(backgroundColor:AppColors.whiteColor,child:Image.asset('assets/images/selected_saves.png',fit: BoxFit.cover,)): ImageIcon(AssetImage('assets/images/icon_saves.png'))),
                  BottomNavigationBarItem(
                      label: '',
                      icon:selectedIndex==4?CircleAvatar(backgroundColor:AppColors.whiteColor,child:Image.asset('assets/images/selected_profile.png',fit: BoxFit.cover,)): ImageIcon(AssetImage('assets/images/icon_profile.png'))),
                ],

              ),
            ),
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );


  }

}


