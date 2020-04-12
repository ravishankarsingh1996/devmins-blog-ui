import 'package:flutter/material.dart';

import '../../constants/color_constant.dart';
import 'footerElements/footer_element_company_detail.dart';
import 'footerElements/footer_element_connect_with_section.dart';
import 'footerElements/footer_element_open_source_details.dart';

class DMFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 50, left: 30, right: 30, top: 20),
        constraints: BoxConstraints(minHeight: 100, maxHeight: 150),
        child: GridView(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            FooterElementCompanyDetails(),
            FooterElementOpenSourceDetails(),
            FooterElementConnectWithSection(),
          ],
        ));
  }
}
