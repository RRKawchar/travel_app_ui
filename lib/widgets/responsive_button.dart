import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/appImages.dart';
import 'package:travel_app_ui/widgets/app_colors.dart';
import 'package:travel_app_ui/widgets/app_simple_text.dart';


class ResponsiveButton extends StatelessWidget {

  bool responsive;
  double width;

  ResponsiveButton({Key? key,this.responsive=false,required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 50,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.mainColor

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppSimpleText(text: ">>>>>>",size: 14,color: AppColors.color1,)




        ],
      ),
    );
  }
}
