import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/app_colors.dart';
import 'package:travel_app_ui/widgets/app_simple_text.dart';


class ResponsiveButton extends StatelessWidget {

  bool? responsive;
  double? width;

  ResponsiveButton({Key? key,this.responsive=false,this.width=120}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
         height: 50,
        width:responsive==true?double.maxFinite:width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.mainColor

        ),
        child: Row(
          mainAxisAlignment:responsive==true?MainAxisAlignment.spaceBetween:MainAxisAlignment.center,
          children: [
           responsive==true?Container(
               margin:const EdgeInsets.only(left: 20),
               child: AppSimpleText(text: "Book Trip Now",size: 18,)):Container(),
            
            Container(
                margin:const EdgeInsets.only(right: 20),
                child: AppSimpleText(text: ">>>>>>",size: 14,color: AppColors.color1,))




          ],
        ),
      ),
    );
  }
}
