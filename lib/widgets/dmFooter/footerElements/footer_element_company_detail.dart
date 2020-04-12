import 'package:flutter/material.dart';

import '../../../constants/color_constant.dart';

class FooterElementCompanyDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.copyright,
              color: ColorConstants.colorWhite,
            ),
            SizedBox(width: 5,),
            Text(
              '2017-2020 Copyright',
              style: TextStyle(color: ColorConstants.colorWhite, fontSize: 15, fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(height: 10,),
        Text(
          'DevMins Community',
          style: TextStyle(color: ColorConstants.colorWhite),
        ),
        SizedBox(height: 10,),
        Text(
          'Contact Us',
          style: TextStyle(color: ColorConstants.colorWhite),
        ),
        SizedBox(height: 10,),
        Text(
          'Privacy Policy',
          style: TextStyle(color: ColorConstants.colorWhite),
        ),
        SizedBox(height: 10,),
        Text(
          'Website Terms & Conditions',
          style: TextStyle(color: ColorConstants.colorWhite),
        ),
      ],
    );
  }
}
