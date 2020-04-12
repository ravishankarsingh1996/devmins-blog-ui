import 'package:devBlog/libraries/fontAwesomeFlutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import '../../../constants/color_constant.dart';
import 'dart:js' as js;

class FooterElementConnectWithSection extends StatelessWidget {
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
                'Connect With DevMins',
                style: TextStyle(color: ColorConstants.colorWhite, fontSize: 15, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: (){
            js.context.callMethod("open", ["https://www.facebook.com/devminsdevelopers/"]);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Like us on Facebook',
              style: TextStyle(color: ColorConstants.colorWhite),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            js.context.callMethod("open", ["https://www.instagram.com/devmins_community/"]);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Follow us on Instagram',
              style: TextStyle(color: ColorConstants.colorWhite),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            js.context.callMethod("open", ["https://medium.com/devmins"]);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Subscribe us on Medium',
              style: TextStyle(color: ColorConstants.colorWhite),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){
            js.context.callMethod("open", ["https://www.youtube.com/devmins"]);
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Subscribe us on Youtube',
              style: TextStyle(color: ColorConstants.colorWhite),
            ),
          ),
        ),
      ],
    );
  }
}
