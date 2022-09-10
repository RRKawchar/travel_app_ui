import 'package:flutter/material.dart';
import 'package:travel_app_ui/widgets/app_colors.dart';
import 'package:travel_app_ui/widgets/app_large_text.dart';
import 'package:travel_app_ui/widgets/app_simple_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{

  var images=[
    "assets/images/mountain.png",
    "assets/images/welcome_first.png",
    "assets/images/welcome_one.png",

  ];

  var iconimages={
    "assets/images/ballooning.png":"Ballooning",
    "assets/images/flying.png":"Flying",
    "assets/images/hiking.png":"Hiking",
    "assets/images/kayaking.png":"Kayaking",
    "assets/images/snorkling.png":"Snorkeling"

  };


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
                tabs: const [
                  Tab(text: "Places",),
                  Tab(text: "Insparation",),
                  Tab(text: "Emotions",),
                ],
              ),
            ),
          ),
          Container(
            padding:const EdgeInsets.only(left: 20,top: 15),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
                controller: _tabController,
                children: [
                  ListView.builder(
                    itemCount: images.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.colorWhit,
                        image: DecorationImage(
                        image: AssetImage(images[index]),fit: BoxFit.cover
                        )
                        ),
                        ),
                      );
                    },

                  ),
                  Text("Md Sagor Khan"),
                  Text("Hello")

                ]

            ),
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(text: "Explore More",size: 22,color: AppColors.colorBlack,),
                AppSimpleText(text: "See all",size: 16,color: AppColors.colorPurple,)
                
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
          margin:const EdgeInsets.only(left: 20),
            height: 130,
            width: double.maxFinite,
            child: ListView.builder(
                  scrollDirection: Axis.horizontal,
              itemCount: iconimages.length,
                itemBuilder: (context,index){

                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.colorWhit,
                                image: DecorationImage(
                                    image: AssetImage(iconimages.keys.elementAt(index)),fit: BoxFit.cover
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            child: AppSimpleText(text: iconimages.values.elementAt(index),color: AppColors.colorBlack,size: 15,),
                          )

                        ],
                      ),
                    ),
                  );
                }

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