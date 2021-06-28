import 'package:flutter/material.dart';
import 'package:phone_shop/constants/app_text_styles.dart';

class MainPhoneContainer extends StatelessWidget {
  final Image image;
  final String text;
  final double height;
  final double width;

  const MainPhoneContainer({
    Key? key,
    required this.image,
    required this.text,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.blue[50],
            ),
            height: height,
            width: width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
              child: Center(
                child: image,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            text,
            style: kphonPlatformTexStyle,
          ),
        ],
      ),
    );
  }
}
