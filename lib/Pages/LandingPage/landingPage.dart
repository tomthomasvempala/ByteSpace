import 'package:byteSpace/Pages/MainScreen/mainScreen.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../themeData.dart';

class LandingPage extends StatefulWidget {


  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
    var currentPage = 0;
  PageController pageController;
@override
void initState() { 
  super.initState();
    pageController = PageController();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        
        Container(
          height: 82*SizeConfig.heightMultiplier,
          child: PageView(
                    onPageChanged: (pagePosition) {
                      currentPage = pagePosition;
                      setState(() {});
                    },
                    controller: pageController,
                    children: [
                      Column(children: [
                        Container(height: 120*SizeConfig.widthMultiplier,
          width: double.infinity,color: Colors.blue,),
                     Padding(
           padding: const EdgeInsets.fromLTRB(40, 40, 40, 5),
           child: Column(children: [
              Text("Experience the Rich Byte sized Educational content from our educators", textAlign: TextAlign.left ,style: TextStyle( height: 1.5,fontSize: 5*SizeConfig.textMultiplier,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
       
           ],),
       ),
                      ],),
                      Column(children: [
                        Container(height: 120*SizeConfig.widthMultiplier,
          width: double.infinity,color: Colors.red,),
                     Padding(
           padding: const EdgeInsets.fromLTRB(40, 40, 40, 5),
           child: Column(children: [
              Text("Easily access the courses handcrafter by your favourite creators",textAlign: TextAlign.left ,style: TextStyle(height: 1.5,fontSize: 5*SizeConfig.textMultiplier,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
       
           ],),
       ),
                      ],),
                      Column(children: [
                        Container(height: 120*SizeConfig.widthMultiplier,
          width: double.infinity,color: Colors.green,),
                     Padding(
           padding: const EdgeInsets.fromLTRB(40, 40, 40, 5),
           child: Column(children: [
              Text("Get your doubts figured out in our Forum maintained by our awesome community",textAlign: TextAlign.left ,style: TextStyle(height: 1.5,fontSize: 5*SizeConfig.textMultiplier,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
       
           ],),
       ),
                      ],)
       
                    ],
                  ),
        ),
        InkWell(
          onTap: (){
            if(currentPage!=2)
               
                      pageController.nextPage(
                          duration: Duration(milliseconds: 400),
                          curve: Curves.decelerate);
                    
            else{
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (

                
              context){
                return MainScreen();
              }
              ));
            }
            setState((){});
          },
          child: Row(children: [
            Padding(padding: EdgeInsets.symmetric(horizontal:40,),child: 
            Row(children: [
              Text(currentPage==2?"Get Started":"Next",style: TextStyle(fontSize: 5*SizeConfig.textMultiplier,color: AppTheme.blue),),
              SizedBox(width: 10,),
              Icon(Icons.arrow_forward,color: AppTheme.blue,)
            ],)
            ,)
          ],),
        ),
        Spacer(),
                   Container(
                margin: EdgeInsets.only(bottom: 35),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    circleBar(currentPage == 0),
                    circleBar(currentPage == 1),
                    circleBar(currentPage == 2),
                  ],
                ),
              ),
       
      ],)
    );
  }
   
}

 Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      curve: Curves.bounceOut,
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: isActive ? 4 : 3,
      width: isActive ? 70 : 65,
      decoration: BoxDecoration(
          color: isActive
              ? Colors.black
              : Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(0)),
          border:  Border.all(width: 0)),
    );
  }