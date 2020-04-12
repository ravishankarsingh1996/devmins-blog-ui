import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import '../../constants/color_constant.dart';
import '../../constants/color_constant.dart';
import '../../constants/color_constant.dart';
import '../../constants/color_constant.dart';
import '../../constants/color_constant.dart';
import '../../constants/color_constant.dart';
import '../../libraries/carousel/carousel_pro.dart';
import '../../libraries/neumorphic/src/card.dart';
import '../../utils/utils_importer.dart';

class DMCarouselWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(right: 16, top: 20, left: 20),
      child: Card(
        color: ColorConstants.colorBgNeu,
     elevation: 20,
        shadowColor: ColorConstants.colorWhite,
        child: CarouselWidget(),
      ),
    );
  }
}

class CarouselWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: UtilsImporter().colorUtils.searchgreycolor,
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Carousel(
            borderRadius: false,
            boxFit: BoxFit.cover,
            autoplayDuration: Duration(seconds: 5),
            images: [
              NetworkImage(
                'https://images.unsplash.com/photo-1548680307-4654426bf6c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
              ),
              NetworkImage(
                'https://images.unsplash.com/photo-1543242594-597f36d719be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80',
              ),
              NetworkImage(
                'https://images.unsplash.com/photo-1522204523234-8729aa6e3d5f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80',
              ),
              NetworkImage(
                'https://images.unsplash.com/photo-1554774853-719586f82d77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
              ),
            ],
            autoplay: true,
            animationCurve: Curves.fastOutSlowIn,
            animationDuration: Duration(milliseconds: 1000),
            dotSize: 6.0,
            indicatorBgPadding: 2.0,
          ),
        ),
        Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                ColorConstants.colorGradient1,
                ColorConstants.colorGradient2,
                ColorConstants.colorGradient1,
              ])),
        ),
        Positioned(
          top: 30,
          right: 50,
          child: FlatButton(
            onPressed: () {},
            colorBrightness: Brightness.dark,
            color: ColorConstants.colorDeepOrange,
            shape: StadiumBorder(),
            child: Text(
              'New',
              style: TextStyle(color: ColorConstants.colorWhite),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 0,
          child: Container(
              padding: EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 30),
              decoration: BoxDecoration(
                  color: ColorConstants.colorBgNeu,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),topRight: Radius.circular(30),)
              ),
              child: Text(
                'A New Way Of Technical Blogging',
                style: TextStyle(color: ColorConstants.colorWhite, fontSize: 35),
              )),
        ),
        Positioned(
          bottom: 30,
          left: 30,
          child: Row(
            children: <Widget>[
              Container(
                color: ColorConstants.colorWhite,
                height: 1,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              SizedBox(width: 20,),
              Text(
                'DevMins',
                style: TextStyle(color: ColorConstants.colorWhite, fontSize: 35),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

