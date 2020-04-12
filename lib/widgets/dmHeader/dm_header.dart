import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import '../../constants/text_style_constant.dart';
import '../../libraries/neumorphic/src/button.dart';
import 'dart:js' as js;

class DMHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 40, right: 40),
      color: ColorConstants.colorBgNeu3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            child: Image.network(
              'https://community.devmins.com/graphics/white-logo-Artboard-1-copy-9.png',
              height: 80,width: 100,),
          ),
          Expanded(child: Container(),),
          Container(
            constraints: BoxConstraints(
              minWidth: 100,
            ),
            margin: EdgeInsets.all(5),
            child: NeuButton(
              shape: BoxShape.rectangle,
              bevel: 5,
              child: Text('Community', style: TextStyleUtils.headerButtonStyle,),
              onPressed: () {
                js.context.callMethod("open", ["https://community.devmins.com"]);
              },
            ),
          ),
          Container(
            constraints: BoxConstraints(
              minWidth: 100,
            ),
            margin: EdgeInsets.all(5),
            child: NeuButton(
              shape: BoxShape.rectangle,
              bevel: 5,
              child: Text('Contact Us', style: TextStyleUtils.headerButtonStyle,),
              onPressed: () {
                js.context.callMethod("open", ["https://community.devmins.com/index.html#contact"]);
              },
            ),
          ),
          Container(
            constraints: BoxConstraints(
              minWidth: 100,
            ),
            margin: EdgeInsets.all(5),
            child: NeuButton(
              shape: BoxShape.rectangle,
              bevel: 5,
              child: Text('About Us', style: TextStyleUtils.headerButtonStyle,),
              onPressed: () {
                js.context.callMethod("open", ["https://community.devmins.com/index.html#who-we-are"]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
