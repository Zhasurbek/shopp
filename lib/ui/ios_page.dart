import 'package:flutter/material.dart';
import 'package:phone_shop/widgets/main_phone_container.dart';

class IOSPage extends StatelessWidget {
  const IOSPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IOS Smartphones'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ipads');
                },
                child: MainPhoneContainer(
                  image: Image.asset('assets/images/ipad/ipad1.png'),
                  height: 190.0,
                  width: 170.0,
                  text: 'Ipad',
                ),
              ),
              const SizedBox(width: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/laptops');
                },
                child: MainPhoneContainer(
                  image: Image.asset('assets/images/laptops/lap7.png'),
                  height: 190.0,
                  width: 170.0,
                  text: 'Laptops',
                ),
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/watches');
                },
                child: MainPhoneContainer(
                  image: Image.asset('assets/images/watch/watch1.png'),
                  height: 190.0,
                  width: 170.0,
                  text: 'Apple Watch',
                ),
              ),
              const SizedBox(width: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/iphones');
                },
                child: MainPhoneContainer(
                    image: Image.asset('assets/images/iphone/iphone1.png'),
                    height: 190.0,
                    width: 170.0,
                    text: 'IPhone'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
