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
      body: SingleChildScrollView(
          child: Column(
        children: [TopPart(), ...courses.map((e) => CourseCard(e)).toList()],
      )),
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
      height: SizeConfig.widthMultiplier * 70,
      color: AppTheme.grey,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 50, 40, 10),
            child: Text(
              "Explore",
              style: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 8 * SizeConfig.textMultiplier,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
            child: Text("Check out what's trending",
                style: TextStyle(fontSize: 5 * SizeConfig.textMultiplier)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
            child: TextField(
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none),
                  hintText: "Search for educators , courses and more",
                  prefixIcon: Icon(Icons.search)),
            ),
          ),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final course;
  CourseCard(this.course);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 47 * SizeConfig.widthMultiplier,
          // width: 272,

          child: Padding(
            padding: EdgeInsets.fromLTRB(
                3 * SizeConfig.widthMultiplier,
                0.7 * SizeConfig.heightMultiplier,
                0,
                SizeConfig.heightMultiplier),
            child: Container(
              height: 30 * SizeConfig.widthMultiplier,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(course['images'])

                    // NetworkImage(
                    //     "https://skyticket.com/guide/wp-content/uploads/2019/06/iStock-152169403.jpg"),
                    ),
                // border: Border.all(width: 2, color: Colors.teal),
                boxShadow: [BoxShadow()],
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 0.50 * MediaQuery.of(context).size.width,
          // width: 272,
          height: 130 / 6.8 * SizeConfig.heightMultiplier,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                3 * SizeConfig.widthMultiplier,
                0.7 * SizeConfig.heightMultiplier,
                0,
                SizeConfig.heightMultiplier),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(top: 10, left: 6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  //color: Colors.white,
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey,
                  //     blurRadius: 1.0,
                  //   ),
                  // ]
                ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      course['name'],
                      style: TextStyle(
                          fontSize: 4 * SizeConfig.textMultiplier,
                          //color: Colors.black.withOpacity(0.7),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      // padding: EdgeInsets.only(right: 120),
                      child: Text(
                        course["caption"],
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 3 * SizeConfig.textMultiplier,
                        ),
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 3, 5, 3),
                      child: Text(course['time'],
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 3 * SizeConfig.textMultiplier)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

var courses = [
  {
    "name": "Guitar course",
    "images":
        "https://miro.medium.com/max/5000/1*Dpb3vjQtqb4D1nAU4RnRWA@2x.png",
    "caption": "These are my new guitarcourses",
    "time": "35 hours",
  },
  {
    "name": "Music Course",
    "images":
        "https://i.gadgets360cdn.com/large/VivoS6vsS5_Vivo_main_1585720569400.jpg",
    "time": "35 hours",
    "caption": "Talk about 5g",
    "tags": ["all", "technology"]
  },
  {
    "name": "Dance course",
    "images":
        "https://www.master-and-more.eu/fileadmin/user_upload/Sociology_.jpg",
    "caption": "We all need to take eyes of mobile and start talking",
    "time": "35 hours",
  },
  {
    "name": "Jazz course",
    "propic":
        "https://i.pinimg.com/originals/d3/02/e4/d302e4d06d9afae957b686985215270a.jpg",
    "images":
        "https://upload.wikimedia.org/wikipedia/commons/c/cb/Life_Skills.jpg",
    "caption": "This is what we have been wating for",
    "time": "35 hours",
  },
];
