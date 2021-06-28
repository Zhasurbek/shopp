import 'package:flutter/material.dart';
import 'package:phone_shop/widgets/main_phone_container.dart';

class AndroidPage extends StatelessWidget {
  const AndroidPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android Phones'),
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
                  Navigator.pushNamed(context, '/samsung');
                },
                child: MainPhoneContainer(
                  image: Image.asset('assets/images/samsung/samsung.png'),
                  height: 190.0,
                  width: 170.0,
                  text: 'Samsung Galaxy',
                ),
              ),
              const SizedBox(width: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/xiaomi');
                },
                child: MainPhoneContainer(
                  image: Image.asset('assets/images/xiaomi/xiaomi1.png'),
                  height: 190.0,
                  width: 170.0,
                  text: 'Xiaomi',
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
                  Navigator.pushNamed(context, '/huawai');
                },
                              child: MainPhoneContainer(
                  image: Image.asset('assets/images/huawai/huawai2.png'),
                  height: 190.0,
                  width: 170.0,
                  text: 'Huawai',
                ),
              ),
              const SizedBox(width: 20.0),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/lg');
                },
                child: MainPhoneContainer(
                    image: Image.asset('assets/images/lg/lg1.png'),
                    height: 190.0,
                    width: 170.0,
                    text: 'LG'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
