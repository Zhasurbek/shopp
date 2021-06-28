import 'package:flutter/material.dart';
import 'package:phone_shop/widgets/main_phone_container.dart';

class PhonePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Smartphones'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/ios');
            },
            child: MainPhoneContainer(
              image: Image.asset('assets/images/iphone/iphone1.png'),
              height: 250.0,
              width: 210.0,
              text: 'IOS',
            ),
          ),
          const SizedBox(height: 40.0),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/android');
            },
            child: MainPhoneContainer(
              image: Image.asset('assets/images/samsung/samsung.png'),
              height: 250.0,
              width: 210.0,
              text: 'ANDROID',
            ),
          ),
        ],
      ),
    );
  }
}
