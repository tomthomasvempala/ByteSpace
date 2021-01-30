import 'package:byteSpace/Headings.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../themeData.dart';
// import './popUpMenu.dart';
//import 'package:flutter/services.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.blue,
      child: SafeArea(
        child: Scaffold(
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          // ),
          body:  SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        decoration:
                            BoxDecoration(color: AppTheme.grey, boxShadow: [
                          BoxShadow(
                            color: AppTheme.blue,
                            blurRadius: 3.0,
                          ),
                        ]),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Container(
                              width: 20 * SizeConfig.widthMultiplier,
                              height: 20 * SizeConfig.widthMultiplier,
                              decoration: new BoxDecoration(
                                  border: Border.all(
                                      color: Colors.white, width: 1),
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                      fit: BoxFit.cover,
                                      image: FadeInImage.assetNetwork(
                                              placeholder:
                                                  'placeholder.png',
                                              image:
                                                  "https://images.unsplash.com/photo-1522556189639-b150ed9c4330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80")
                                          .image))),
                        ),
                                Text(
                                  "Denin Pul",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize:
                                        4 * SizeConfig.textMultiplier,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        // height: 161.0,/
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Heading("Enrolled courses")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
