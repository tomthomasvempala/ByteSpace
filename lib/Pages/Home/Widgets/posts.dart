import 'package:flutter/material.dart';

import '../../../themeData.dart';

class Posts extends StatefulWidget {
  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  int tabIndex = 0;
  PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...tags
                  .map((e) => InkWell(
                        onTap: () {
                          setState(() {
                            tabIndex = tags.indexOf(e);
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                e,
                                style: TextStyle(
                                    fontSize:
                                        tabIndex == tags.indexOf(e) ? 16 : 16),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              AnimatedContainer(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: AppTheme.darkBlue,
                                  ),
                                  duration: Duration(milliseconds: 200),
                                  height: tabIndex == tags.indexOf(e) ? 5 : 0,
                                  width: tabIndex == tags.indexOf(e) ? 5 : 0)
                            ],
                          ),
                        ),
                      ))
                  .toList()
            ],
          ),
        ),
        Column(
          children: [
            ...posts
                .map((e) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.red),
                                height: 20,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(e["name"])
                            ],
                          ),
                        )
                      ],
                    ))
                .toList()
          ],
        )
      ],
    );
  }
}

var tags = ["All", "Art", "Technology", "Social Science", "Skills"];

var posts = [
  {
    "name": "Susan Jacob",
    "images": [
      "https://cdn.mos.cms.futurecdn.net/2nUGsD2QnvC9BzM8geN48M-1200-80.jpg",
      "https://miro.medium.com/max/5000/1*Dpb3vjQtqb4D1nAU4RnRWA@2x.png"
    ],
    "time": "2 hours ago",
    "caption": "These are my new illustrations",
    "tags": ["all", "art"]
  }
];
