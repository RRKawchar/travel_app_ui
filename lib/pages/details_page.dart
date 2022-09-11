import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/app_button.dart';
import 'package:travel_app_ui/widgets/app_colors.dart';
import 'package:travel_app_ui/widgets/app_large_text.dart';
import 'package:travel_app_ui/widgets/app_simple_text.dart';
import 'package:travel_app_ui/widgets/apptext.dart';
import 'package:travel_app_ui/widgets/responsive_button.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int gottenStar = 3;
  int selectedIndex=0;
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
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/mountain.png"),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: AppColors.colorWhit,
                    ),
                  ],
                )),
            Positioned(
                top: 330,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      color: AppColors.colorWhit,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                              text: "Yosemite", color: AppColors.colorBlack),
                          AppLargeText(
                              text: "\$ 300", color: AppColors.colorPurple),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on,
                            color: AppColors.colorPurple,
                          ),
                          AppSimpleText(
                            text: "USA , California",
                            color: AppColors.colorPurple.withOpacity(0.5),
                            size: 16,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: index < gottenStar
                                      ? AppColors.starColor
                                      : AppColors.colorPurple);
                            }),
                          ),
                          AppSimpleText(
                            text: "(3.0)",
                            color: AppColors.colorPurple,
                            size: 18,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      AppLargeText(
                        text: "People",
                        color: AppColors.colorBlack,
                        size: 22,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      AppSimpleText(
                        text: "Number of people in your group",
                        color: AppColors.colorBlack.withOpacity(0.5),
                        size: 17,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Wrap(
                        children: List.generate(6, (index) {
                          return InkWell(
                            onTap: (){
                              setState(() {

                                selectedIndex=index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(right: 16),
                              child: AppButton(
                                size: 50,
                                text_iconColor:selectedIndex==index?AppColors.colorWhit:AppColors.colorBlack,
                                backgroundColor: selectedIndex==index?AppColors.colorBlack:AppColors.buttonBackground,
                                borderColor:selectedIndex==index?AppColors.colorBlack:AppColors.buttonBackground,
                                text: (index+1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppLargeText(text: "Description",color: AppColors.colorBlack.withOpacity(0.8),),
                      const SizedBox(
                        height: 10,
                      ),
                      AppSimpleText(text: AppText.aboutMounttext,size: 15,color: AppColors.colorBlack.withOpacity(0.6),)
                    ],
                  ),
                )),
            Positioned(
              bottom: 30,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                        size: 50,
                        text_iconColor: AppColors.colorPurple,
                        backgroundColor: AppColors.colorWhit,
                        borderColor: AppColors.colorBlack,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    const SizedBox(width: 20,),

                    ResponsiveButton(
                    responsive: true,

                    )

                  ],
                )

            )
          ],
        ),
      ),
    );
  }
}
