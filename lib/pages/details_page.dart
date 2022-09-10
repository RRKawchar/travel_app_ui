import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/app_colors.dart';
import 'package:travel_app_ui/widgets/app_large_text.dart';
import 'package:travel_app_ui/widgets/app_simple_text.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {


  int gottenStar=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
               left: 0,
                right: 0,
                child: Container(
                  height: 350,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/mountain.png"),fit: BoxFit.cover
                    )
                  ),
                )
            ),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    Icon(Icons.menu,color: AppColors.colorWhit,),

                  ],
                )
            ),
            Positioned(
            top: 330,
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppColors.colorWhit,
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(text: "Yosemite", color: AppColors.colorBlack),
                          AppLargeText(text: "\$ 300", color: AppColors.colorPurple),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: AppColors.colorPurple,),
                          AppSimpleText(text: "USA , California",color:AppColors.colorPurple.withOpacity(0.5),size: 16,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index){
                              return Icon(Icons.star,color:index<gottenStar?AppColors.starColor:AppColors.colorPurple);
                            }),
                          ),
                          AppSimpleText(text: "(3.0)",color: AppColors.colorPurple,size: 18,)
                        ],
                      ),

                    ],
                  ),
                )

            )
          ],
        ),
      ),
    );
  }
}
