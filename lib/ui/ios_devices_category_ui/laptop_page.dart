import 'package:flutter/material.dart';
import 'package:phone_shop/constants/app_text_styles.dart';
import 'package:phone_shop/device_data.dart/laptops.dart';

class Laptops extends StatefulWidget {
  @override
  State<Laptops> createState() => _LaptopsState();
}

class _LaptopsState extends State<Laptops> {
  List<Widget> itemsData = [];

  void getPostData() {
    List<dynamic> responseList = laptops;
    List<Widget> listItems = [];

    responseList.forEach(
      (post) {
        listItems.add(
          Container(
            height: 150.0,
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.blueGrey,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/laptops/${post['image']}",
                    height: 150.0,
                    width: 100.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 20.0,
                    top: 20.0,
                    bottom: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        post['name'],
                        style: kDeviceNameTexStyle,
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        post['processor'],
                        style: kProcessorTexStyle,
                      ),
                      const SizedBox(height: 15.0),
                      Text(
                        "${post['price']} \$",
                        style: kPriceTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
    setState(() {
      itemsData = listItems;
    });
  }

  void initState() {
    super.initState();
    getPostData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laptops'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: itemsData.length,
            itemBuilder: (context, index) {
              return itemsData[index];
            },
          ),
        ),
      ),
    );
  }
}
