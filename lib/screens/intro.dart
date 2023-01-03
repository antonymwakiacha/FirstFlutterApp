import 'package:flutter/material.dart';
import 'package:my_first_flutter/screens/bottom_nav_demo.dart';
import 'package:my_first_flutter/screens/botttomnav_withfab.dart';
import 'package:my_first_flutter/screens/form_ex.dart';
import 'package:my_first_flutter/screens/home_page.dart';
import 'package:my_first_flutter/screens/plants.dart';
import 'package:my_first_flutter/screens/sliver_demo.dart';
import 'package:my_first_flutter/widgets/intro_card.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //FIRST CONTAINER
              IntroCard(onClick:(){
              Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MyHomePage()));
              },
                  img: "images/forestbg.jpg",
                  cardTitle: "Basic Widgets"),
              SizedBox(
                height: 25,
              ),
              //SECOND CONTAINER
              IntroCard(onClick:(){
              Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const FormEx()));
              },
                  img: "images/forestbg.jpg",
                  cardTitle: "Form Example"),
              SizedBox(
                height: 25,
              ),
              //THIRD CONTAINER
              IntroCard(onClick:(){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BottomNavbarDemo()));
              },
                  img: "images/forestbg.jpg",
                  cardTitle: "Bottom NavBar Demo"),
              SizedBox(
                height: 25,
              ),
              //FOURTH CONTAINER
              IntroCard(onClick:(){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BottomnavwithFab()));
              },
                  img: "images/forestbg.jpg",
                  cardTitle: "Bottom NavBar with FAB"),
              SizedBox(
                height: 25,
              ),
              //FIFTH CONTAINER
              IntroCard(onClick:(){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SliverDemo()));
              },
                  img: "images/forestbg.jpg",
                  cardTitle: "SLiver Appbar Example"),
              SizedBox(
                height: 25,
              ),
              //FIFTH CONTAINER
              IntroCard(onClick:(){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PlantsUI()));
              },
                  img: "images/forestbg.jpg",
                  cardTitle: "UI  Example")


            ],
          ),
        ),
      ),
    );
  }
}
