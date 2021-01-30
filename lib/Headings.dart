import 'package:byteSpace/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Heading extends StatelessWidget {
  final String heading;
  Heading(this.heading);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(
              2.4 * SizeConfig.widthMultiplier,
              6 * SizeConfig.widthMultiplier,
              3 * SizeConfig.widthMultiplier,
              0),
          child: Text(heading,
              style: TextStyle(
                fontSize: 5 * SizeConfig.textMultiplier,
                fontWeight: FontWeight.w500,
              )),
        ),
        // Padding(
        //   padding:
        //       EdgeInsets.only(left: 2.4 * SizeConfig.widthMultiplier, top: 1),
        //   child: Container(
        //     height: 3,
        //     width: 50,
        //     color: AppTheme.violetone,
        //   ),
        // ),
      ],
    );
  }
}
