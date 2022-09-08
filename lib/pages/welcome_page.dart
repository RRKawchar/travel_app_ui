import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  List<String> images=[
    "assets/images/welcome_first.png",
    "assets/images/welcome_three.png",
    "assets/images/welcome_two.png",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
            scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context,index){

            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    images[index],

                  ),
                  fit: BoxFit.cover
                )
              ),
            );
          }
      ),
    );
  }
}
