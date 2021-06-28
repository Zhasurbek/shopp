import 'package:flutter/material.dart';
import 'package:phone_shop/device_data.dart/iphones.dart';
import 'package:phone_shop/widgets/list_view.dart';

class Iphones extends StatefulWidget {
  @override
  _IphonesState createState() => _IphonesState();
}

class _IphonesState extends State<Iphones> {
  List<Widget> listItems = [];

  void getIphoneData() {
    List<dynamic> responseList = iphones;
    List<Widget> listIphones = [];
    responseList.forEach(
      (iphone) {
        listIphones.add(
          ListViewReusable(
            deviceName: iphone['name'],
            devicePrice: "${iphone['price']} \$",
            deviceProcessor: '',
            deviceImage: Image.asset(
              "assets/images/iphone/${iphone['image']}",
              height: 130.0,
              width: 110.0,
            ),
          ),
        );
      },
    );
    setState(() {
      listItems = listIphones;
    });
  }

  void initState() {
    super.initState();
    getIphoneData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iphones'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: listItems.length,
            itemBuilder: (context, index) {
              return listItems[index];
            },
          ),
        ),
      ),
    );
  }
}
