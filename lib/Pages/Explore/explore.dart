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

var courses = [
  {
    "name":"Guitar course"
    "images": 
      "https://miro.medium.com/max/5000/1*Dpb3vjQtqb4D1nAU4RnRWA@2x.png"
    ,
    "caption": "These are my new guitarcourses",
  },
  {
    "name": "Music Course",
    "images": 
      "https://i.gadgets360cdn.com/large/VivoS6vsS5_Vivo_main_1585720569400.jpg",
    
    "time": "2 hours ago",
    "caption": "Talk about 5g",
    "tags": ["all", "technology"]
  },
  {
    "name": "Dance course",
    "images": 
      "https://www.master-and-more.eu/fileadmin/user_upload/Sociology_.jpg"
    ,
    "caption": "We all need to take eyes of mobile and start talking",
  },
  {
    "name": "Jazz course",
    "propic":
        "https://i.pinimg.com/originals/d3/02/e4/d302e4d06d9afae957b686985215270a.jpg",
    "images": 
      "https://upload.wikimedia.org/wikipedia/commons/c/cb/Life_Skills.jpg",
    "caption": "This is what we have been wating for",
  },
];


