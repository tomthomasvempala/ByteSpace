import 'package:flutter/foundation.dart';
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
            ...(posts)
                .where((element) => (element["tags"] as List)
                    .contains(tags[tabIndex].toLowerCase()))
                .toList()
                .map((post) {
              return OnePost(
                post: post,
              );
            }).toList()
          ],
        )
      ],
    );
  }
}

class OnePost extends StatefulWidget {
  final post;
  OnePost({this.post});

  @override
  _OnePostState createState() => _OnePostState();
}

class _OnePostState extends State<OnePost> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.post["propic"])),
                    shape: BoxShape.circle,
                    color: Colors.white),
                height: 40,
                width: 40,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                widget.post["name"],
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                  height: 300,
                  child: PageView(
                      onPageChanged: (t) {
                        setState(() {
                          currentIndex = t;
                        });
                      },
                      children: (widget.post["images"] as List<String>)
                          .map((e) => Container(
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(e))),
                              ))
                          .toList())),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: (widget.post["images"] as List)
                    .map((e) => Padding(
                        padding: EdgeInsets.all(8),
                        child: AnimatedContainer(
                            decoration: BoxDecoration(
                              border: Border.all(color: AppTheme.darkBlue),
                              shape: BoxShape.circle,
                              color: AppTheme.white,
                            ),
                            duration: Duration(milliseconds: 200),
                            height:
                                currentIndex == widget.post["images"].indexOf(e)
                                    ? 10
                                    : 5,
                            width:
                                currentIndex == widget.post["images"].indexOf(e)
                                    ? 8
                                    : 5)))
                    .toList(),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                Icon(Icons.favorite_outline),
                SizedBox(
                  width: 15,
                ),
                Icon(Icons.comment_outlined)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              widget.post["caption"],
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0),
            child: Text(
              widget.post["time"],
              maxLines: 2,
              style: TextStyle(color: Colors.grey, fontSize: 12),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

var tags = ["All", "Art", "Technology", "Social Science", "Skills"];

var posts = [
  {
    "name": "Susan Jacob",
    "propic":
        "https://www.thejigsaw.in/blog/wp-content/uploads/2019/03/digital-freehand-illustration.jpg",
    "images": [
      "https://cdn.mos.cms.futurecdn.net/2nUGsD2QnvC9BzM8geN48M-1200-80.jpg",
      "https://miro.medium.com/max/5000/1*Dpb3vjQtqb4D1nAU4RnRWA@2x.png"
    ],
    "time": "2 hours ago",
    "caption": "These are my new illustrations",
    "tags": ["all", "art"]
  },
  {
    "name": "George Sabu",
    "propic":
        "https://i.pinimg.com/originals/d3/02/e4/d302e4d06d9afae957b686985215270a.jpg",
    "images": [
      "https://i.gadgets360cdn.com/large/VivoS6vsS5_Vivo_main_1585720569400.jpg",
    ],
    "time": "2 hours ago",
    "caption": "Talk about 5g",
    "tags": ["all", "technology"]
  },
  {
    "name": "Tom Vempala",
    "propic":
        "https://i.pinimg.com/originals/d3/02/e4/d302e4d06d9afae957b686985215270a.jpg",
    "images": [
      "https://www.master-and-more.eu/fileadmin/user_upload/Sociology_.jpg",
    ],
    "time": "2 hours ago",
    "caption": "We all need to take eyes of mobile and start talking",
    "tags": ["all", "social science"]
  },
  {
    "name": "Aldrin Jenson",
    "propic":
        "https://i.pinimg.com/originals/d3/02/e4/d302e4d06d9afae957b686985215270a.jpg",
    "images": [
      "https://upload.wikimedia.org/wikipedia/commons/c/cb/Life_Skills.jpg",
      "https://miro.medium.com/max/5000/1*Dpb3vjQtqb4D1nAU4RnRWA@2x.png"
    ],
    "time": "2 hours ago",
    "caption": "This is what we have been wating for",
    "tags": ["all", "skills"]
  },
  {
    "name": "Denin Paul",
    "propic":
        "https://i.pinimg.com/originals/d3/02/e4/d302e4d06d9afae957b686985215270a.jpg",
    "images": [
      "https://previews.123rf.com/images/tastyvector/tastyvector1505/tastyvector150500112/40501759-science-and-modern-technology.jpg"
    ],
    "time": "2 hours ago",
    "caption": "These are my new illustrations",
    "tags": ["all", "technology"]
  }
];
