import 'package:devBlog/libraries/fontAwesomeFlutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constant.dart';
import 'dart:js' as js;

class FooterElementOpenSourceDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
//            Icon(
//              FontAwesomeIcons.github,
//              color: ColorConstants.colorWhite,
//            ),
//            SizedBox(width: 5,),
              Text(
                'Github',
                style: TextStyle(color: ColorConstants.colorWhite, fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: (){
            js.context.callMethod("open", ["https://github.com/devmins-code"]);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'DevMins OpenSource',
              style: TextStyle(color: ColorConstants.colorWhite),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            js.context.callMethod("open", ["https://github.com/ravishankarsingh1996"]);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Ravi Shankar Singh',
              style: TextStyle(color: ColorConstants.colorWhite),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            js.context.callMethod("open", ["https://github.com/nishantml"]);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Nishant Bhushan',
              style: TextStyle(color: ColorConstants.colorWhite),
            ),
          ),
        ),
      ],
    );
  }
}
