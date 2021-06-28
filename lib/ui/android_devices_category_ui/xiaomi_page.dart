import 'package:flutter/material.dart';
import 'package:phone_shop/device_data.dart/xiaomi.dart';
import 'package:phone_shop/widgets/list_view.dart';

class Xiaomi extends StatefulWidget {
  @override
  _XiaomiState createState() => _XiaomiState();
}

class _XiaomiState extends State<Xiaomi> {
  List<Widget> listItems = [];

  void getXiaomiData() {
    List<dynamic> responseList = xiaomi;
    List<Widget> listXiaomi = [];
    responseList.forEach(
      (xiaomi) {
        listXiaomi.add(
          ListViewReusable(
            deviceName: xiaomi['name'],
            devicePrice: "${xiaomi['price']} \$",
            deviceProcessor: '',
            deviceImage: Image.asset(
              "assets/images/xiaomi/${xiaomi['image']}",
              height: 120.0,
              width: 110.0,
            ),
          ),
        );
      },
    );
    setState(() {
      listItems = listXiaomi;
    });
  }

  void initState() {
    super.initState();
    getXiaomiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Xiaomi'),
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
