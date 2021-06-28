import 'package:flutter/material.dart';
import 'package:phone_shop/device_data.dart/watches.dart';
import 'package:phone_shop/widgets/list_view.dart';

class Watches extends StatefulWidget {
  @override
  _WatchesState createState() => _WatchesState();
}

class _WatchesState extends State<Watches> {
  List<Widget> listItems = [];

  void getWatcheData() {
    List<dynamic> responseList = watches;
    List<Widget> listWatches = [];
    responseList.forEach(
      (watch) {
        listWatches.add(
          ListViewReusable(
            deviceName: watch['name'],
            devicePrice: "${watch['price']} \$",
            deviceProcessor: '',
            deviceImage: Image.asset(
              "assets/images/watch/${watch['image']}",
              height: 150.0,
              width: 130.0,
            ),
          ),
        );
      },
    );
    setState(() {
      listItems = listWatches;
    });
  }

  void initState() {
    super.initState();
    getWatcheData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Watches'),
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
