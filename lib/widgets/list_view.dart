import 'package:flutter/material.dart';
import 'package:phone_shop/constants/app_text_styles.dart';

class ListViewReusable extends StatelessWidget {
  final String deviceName;
  final String devicePrice;
  final Image deviceImage;
  final String deviceProcessor;

  ListViewReusable({
    required this.deviceName,
    required this.devicePrice,
    required this.deviceImage,
    required this.deviceProcessor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.blueGrey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
            child: deviceImage,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right:20.0, top: 20),
                child: Text(
                  deviceName,
                  style: kDeviceNameTexStyle,
                ),
              ),
              Text(
                deviceProcessor,
                style: kProcessorTexStyle,
              ),
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: Text(
                  devicePrice,
                  style: kPriceTextStyle,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
