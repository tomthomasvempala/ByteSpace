import 'package:byteSpace/size_config.dart';
import 'package:byteSpace/themeData.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: 
      Column(children: [
        TopPart(),
      ],)
      
      ),
    );
  }
}

class TopPart extends StatefulWidget {
  TopPart({Key key}) : super(key: key);

  @override
  _TopPartState createState() => _TopPartState();
}

class _TopPartState extends State<TopPart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.widthMultiplier*70,
      color: AppTheme.grey,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
            child: Text("Explore",style: TextStyle(letterSpacing: 1.5, fontSize: 8*SizeConfig.textMultiplier,fontWeight: FontWeight.bold),),
          ),
      
          Padding(
padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
            child: Text("Check out what's trending",style: TextStyle(fontSize: 5*SizeConfig.textMultiplier)),
          ),  
          Padding(
     padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
                hintText: "Search for educators , courses and more",
                prefixIcon: Icon(Icons.search)
                 ),
            ),
          )
        ],),
    );
  }
}

