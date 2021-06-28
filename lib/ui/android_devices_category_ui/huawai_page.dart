import 'package:flutter/material.dart';
import 'package:phone_shop/device_data.dart/huawai.dart';
import 'package:phone_shop/widgets/list_view.dart';

class Huawai extends StatefulWidget {
  @override
  _HuawaiState createState() => _HuawaiState();
}

class _HuawaiState extends State<Huawai> {
  List<Widget> listItems = [];

  void getHuawaiData() {
    List<dynamic> responseList = huawai;
    List<Widget> listHuawai = [];
    responseList.forEach(
      (huawai) {
        listHuawai.add(
          ListViewReusable(
            deviceName: huawai['name'],
            devicePrice: "${huawai['price']} \$",
            deviceProcessor: '',
            deviceImage: Image.asset(
              "assets/images/huawai/${huawai['image']}",
              height: 150.0,
              width: 130.0,
            ),
          ),
        );
      },
    );
    setState(() {
      listItems = listHuawai;
    });
  }

  void initState() {
    super.initState();
    getHuawaiData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Huawai'),
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
