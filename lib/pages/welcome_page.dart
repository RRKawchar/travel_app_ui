import 'package:flutter/material.dart';
import 'package:travel_app_ui/pages/main_page.dart';
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       AppLargeText(text: "Trips", color: AppColors.colorWhit,),
                       AppSimpleText(text: "Mountain",size: 25,color: AppColors.colorBlack,),
                       const SizedBox(height: 10,),
                       SizedBox(
                         width: 250,
                         child: AppSimpleText(
                           text: AppText.text1,
                           color: AppColors.colorBlack,
                           size: 12,
                         ),
                       ),
                        const SizedBox(height: 30,),
                        ResponsiveButton(
                           responsive: false,
                          ),
                        SizedBox(height: 20,),
                        TextButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (_)=>MainPage()));
                            },
                            child:AppLargeText(text: "Skip",color: Colors.orange,size: 20,)
                        )

                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){

                        return Container(

                          margin:const EdgeInsets.only(bottom: 2),
                        width: 8,
                            height:index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color:index==indexDots?AppColors.mainColor:AppColors.colorBlack
                          ),

                        );
                      }),
                    ),

                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
