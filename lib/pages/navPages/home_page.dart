import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/app_colors.dart';
import 'package:travel_app_ui/widgets/app_large_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController=TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:const EdgeInsets.only(top: 60,left: 20),
            child: Row(
              children: [
               Icon(Icons.menu,size: 30,) ,
                Expanded(child: Container(),),
                Container(
                  margin:const EdgeInsets.only(right: 20),
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5)
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            margin:const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Discover",size: 30,color: AppColors.colorBlack,),
          ),
          SizedBox(height: 30,),
          Container(
            child:Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelColor: AppColors.colorBlack,
                labelPadding:const EdgeInsets.only(left: 20,right: 20),
                unselectedLabelColor: AppColors.colorBlack.withOpacity(0.5),
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(color: AppColors.mainColor,radius: 4),
                isScrollable: true,
                controller: _tabController,
                tabs: [
                  Tab(text: "Places",),
                  Tab(text: "Insparation",),
                  Tab(text: "Emotions",),
                ],
              ),
            ),
          ),
          Container(
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
                controller: _tabController,
                children: [
                  Text("Hi"),
                  Text("There"),
                  Text("Hello")

                ]

            ),
          )

        ],
      ),
    );
  }
}
class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({required this.color,required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _CirclePrinter(color: color, radius: radius,);
  }

}

class _CirclePrinter extends BoxPainter{
  final Color color;
  double radius;
  _CirclePrinter({required this.color,required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint= Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset=Offset(configuration.size!.width/2-radius/2,configuration.size!.height-radius);
    canvas.drawCircle(offset+circleOffset, radius, _paint);


  }


}