import 'package:flutter/material.dart';
import 'package:phone_shop/device_data.dart/samsung.dart';
import 'package:phone_shop/widgets/list_view.dart';

class Samsung extends StatefulWidget {
  @override
  _SamsungState createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {
  List<Widget> listItems = [];

  void getSamsungData() {
    List<dynamic> responseList = samsung;
    List<Widget> listSamsung = [];
    responseList.forEach(
      (samsung) {
        listSamsung.add(
          ListViewReusable(
            deviceName: samsung['name'],
            devicePrice: "${samsung['price']} \$",
            deviceProcessor: '',
            deviceImage: Image.asset(
              "assets/images/samsung/${samsung['image']}",
              height: 130.0,
              width: 110.0,
            ),
          ),
        );
      },
    );
    setState(() {
      listItems = listSamsung;
    });
  }

  void initState() {
    super.initState();
    getSamsungData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samsungs'),
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
