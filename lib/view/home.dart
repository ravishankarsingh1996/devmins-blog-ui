import 'package:devBlog/constants/color_constant.dart';
import 'package:devBlog/constants/text_style_constant.dart';
import 'package:devBlog/libraries/carousel/carousel_pro.dart';
import 'package:devBlog/libraries/neumorphic/neumorphic.dart';
import 'package:devBlog/utils/utils_importer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.colorBgNeu,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 40, right: 40),
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
                      child: Text('Home', style: TextStyleUtils.headerButtonStyle,),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 100,
                    ),
                    margin: EdgeInsets.all(5),
                    child: NeuButton(
                      shape: BoxShape.rectangle,
                      child: Text('Mobile Application', style: TextStyleUtils.headerButtonStyle,),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 100,
                    ),
                    margin: EdgeInsets.all(5),
                    child: NeuButton(
                      shape: BoxShape.rectangle,
                      child: Text('Frontend', style: TextStyleUtils.headerButtonStyle,),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 100,
                    ),
                    margin: EdgeInsets.all(5),
                    child: NeuButton(
                      shape: BoxShape.rectangle,
                      child: Text('Backend', style: TextStyleUtils.headerButtonStyle,),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minWidth: 100,
                    ),
                    margin: EdgeInsets.all(5),
                    child: NeuButton(
                      shape: BoxShape.rectangle,
                      child: Text('Programming Tips', style: TextStyleUtils.headerButtonStyle,),
                      onPressed: () {},
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

                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: ColorConstants.colorBgNeu,
              margin: EdgeInsets.only(top: 0, right: 10, left: 10),
              padding: EdgeInsets.only(top: 0, right: 10, left: 10),
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                children: <Widget>[
                  Container(
                    height: 600,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(right: 16, top: 20, left: 20),
                    child: NeuCard(
                      bevel: 6,
                      color: ColorConstants.colorBgNeu,
                      curveType: CurveType.emboss,
                      decoration: NeumorphicDecoration(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: image_carousel,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 10,
                    ),
                    child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 3,
                      shrinkWrap: true,
                      childAspectRatio:
                      MediaQuery.of(context).size.aspectRatio * 0.5,
                      physics: NeverScrollableScrollPhysics(),
                      children: List.generate(10, (index) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(
                              right: 16, top: 10, left: 20, bottom: 10),
                          child: NeuCard(
                            bevel: 5,
                            color: ColorConstants.colorBgNeu,
                            curveType: CurveType.flat,
                            decoration: NeumorphicDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: <Widget>[
                                Image.network(
                                    'https://images.unsplash.com/photo-1541345023926-55d6e0853f4b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80'),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'MVVM Architecture - Android Tutorial for Beginners - Step by Step Guide',
                                    softWrap: true,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: ColorConstants.colorWhite),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      NeuCard(
                                        bevel: 8,
                                        color: ColorConstants.colorBgNeu,
                                        curveType: CurveType.flat,
                                        decoration: NeumorphicDecoration(
                                            shape: BoxShape.circle),
                                        padding: EdgeInsets.all(3),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: Image.network(
                                            'https://avatars2.githubusercontent.com/u/20386271?s=400&u=f323c0d5aca3da5eaecc183a3cf6abff6002df21&v=4',
                                            height: 30,
                                            width: 30,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Ravi Singh',
                                        softWrap: true,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: ColorConstants.colorWhite60),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'In this tutorial, first, we are going to learn about the MVVM architecture in Android and then we will build a project with MVVM architecture. This tutorial is for beginners who want to get started with the MVVM architecture. As this is for beginners, I have done some simplifications. Let\'s get started.',
                                    softWrap: true,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: ColorConstants.colorWhite60),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  // 2
  Widget image_carousel = new Container(
    decoration: new BoxDecoration(
        color: UtilsImporter().colorUtils.searchgreycolor,
        borderRadius: new BorderRadius.all(Radius.circular(20.0))),
    child: new Carousel(
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
  );
}
