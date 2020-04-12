import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import 'dart:js' as js;

import '../../constants/color_constant.dart';

class DMYoutubeFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 100, left: 0, right: 0, top: 20),
        width: double.infinity,
        constraints: BoxConstraints(minHeight: 100, maxHeight: 400),
        decoration: BoxDecoration(
            color: ColorConstants.colorWhite70,
            gradient: LinearGradient(
              colors: [ColorConstants.colorRed, ColorConstants.colorDeepOrange, ColorConstants.colorDeepOrange],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Watch and learn from our free\nvideos',
                style: TextStyle(
                    color: ColorConstants.colorWhite,
                    fontSize: Theme.of(context).textTheme.headline5.fontSize,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            InkWell(
              onTap: () {
                js.context
                    .callMethod("open", ["https://www.youtube.com/devmins"]);
              },
              splashColor: ColorConstants.colorBgNeu3,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  colors: [
                    ColorConstants.colorLightGreenAccent,
                    ColorConstants.colorLimeAccent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          top: 15, bottom: 15, left: 20, right: 20),
                      child: Text(
                        'DevMins Youtube',
                        style: TextStyle(
                            color: ColorConstants.colorBlack,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 60,
                      constraints:
                          BoxConstraints(minHeight: 60, maxHeight: 200),
                      decoration: BoxDecoration(
                          color: ColorConstants.colorBlack.withOpacity(0.2)),
                      child: Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
