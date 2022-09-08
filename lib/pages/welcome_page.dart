import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/app_colors.dart';
import 'package:travel_app_ui/widgets/app_large_text.dart';
import 'package:travel_app_ui/widgets/app_simple_text.dart';
import 'package:travel_app_ui/widgets/apptext.dart';
import 'package:travel_app_ui/widgets/responsive_button.dart';

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

              child: Container(
                margin:const  EdgeInsets.only(top: 150,left: 20,right: 20),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       AppLargeText(text: "Trips",),
                       AppSimpleText(text: "Mountain",size: 25,color: Colors.white54,),
                       const SizedBox(height: 10,),
                       SizedBox(
                         width: 250,
                         child: AppSimpleText(
                           text: AppText.text1,
                           color: AppColors.color1,
                           size: 12,
                         ),
                       ),
                        const SizedBox(height: 30,),
                        ResponsiveButton(width: 100,),

                      ],
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
