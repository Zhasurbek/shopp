import 'package:flutter/material.dart';
import 'package:phone_shop/device_data.dart/ipads.dart';
import 'package:phone_shop/widgets/list_view.dart';

class Ipads extends StatefulWidget {
  @override
  _IpadsState createState() => _IpadsState();
}

class _IpadsState extends State<Ipads> {
  List<Widget> listItems = [];

  void getIpadData() {
    List<dynamic> responseList = ipads;
    List<Widget> listIpads = [];
    responseList.forEach(
      (ipad) {
        listIpads.add(
          ListViewReusable(
            deviceName: ipad['name'],
            devicePrice: "${ipad['price']} \$",
            deviceProcessor: '',
            deviceImage: Image.asset(
              "assets/images/ipad/${ipad['image']}",
              height: 150.0,
              width: 130.0,
            ),
          ),
        );
      },
    );
    setState(() {
      listItems = listIpads;
    });
  }

  void initState() {
    super.initState();
    getIpadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ipads'),
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
