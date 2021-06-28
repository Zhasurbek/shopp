import 'package:flutter/material.dart';
import 'package:phone_shop/device_data.dart/lg.dart';
import 'package:phone_shop/widgets/list_view.dart';

class Lg extends StatefulWidget {
  @override
  _LgState createState() => _LgState();
}

class _LgState extends State<Lg> {
  List<Widget> listItems = [];

  void getLgData() {
    List<dynamic> responseList = lg;
    List<Widget> listLg = [];
    responseList.forEach(
      (lg) {
        listLg.add(
          ListViewReusable(
            deviceName: lg['name'],
            devicePrice: "${lg['price']} \$",
            deviceProcessor: '',
            deviceImage: Image.asset(
              "assets/images/lg/${lg['image']}",
              height: 150.0,
              width: 130.0,
            ),
          ),
        );
      },
    );
    setState(() {
      listItems = listLg;
    });
  }

  void initState() {
    super.initState();
    getLgData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lg'),
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
