import 'package:devBlog/constants/color_constant.dart';
import 'package:devBlog/constants/text_style_constant.dart';
import 'package:devBlog/libraries/carousel/carousel_pro.dart';
import 'package:devBlog/libraries/neumorphic/neumorphic.dart';
import 'package:devBlog/utils/utils_importer.dart';
import 'package:devBlog/widgets/dmCarousel/dm_carousel_widget.dart';
import 'package:devBlog/widgets/dmFooter/dm_footer.dart';
import 'package:devBlog/widgets/dmHeader/dm_header.dart';
import 'package:devBlog/widgets/dmYoutubeFooter/dm_youtube_footer.dart';
import 'package:flutter/material.dart';

import '../constants/color_constant.dart';

class BlogHomePage extends StatefulWidget {
  @override
  _BlogHomePageState createState() => _BlogHomePageState();
}

class _BlogHomePageState extends State<BlogHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.colorBlack,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            DMHeaderWidget(),
            Container(
              height: MediaQuery.of(context).size.height,
//              color: ColorConstants.colorBgNeu,
              margin: EdgeInsets.only(top: 0, right: 10, left: 10),
              padding: EdgeInsets.only(top: 0, right: 10, left: 10),
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),
                children: <Widget>[
                  DMCarouselWidget(),
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
                          child: Card(
                            color: ColorConstants.colorBlack,
                           elevation: 5,
                            shadowColor: ColorConstants.colorWhite70,
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
                                        bevel: 2,
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
                  ),
                  DMYoutubeFooterWidget(),
                  DMFooterWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}
