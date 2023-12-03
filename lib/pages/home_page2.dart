import 'package:flutter/material.dart';
import 'package:tourapp/data/data_tours.dart';
import 'package:tourapp/models/country_model.dart';
import 'package:tourapp/pages/widgets/card_country.dart';
import 'package:tourapp/pages/widgets/card_populars_tours.dart';

class HomePage2 extends StatefulWidget {
  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List<Widget> listWidgetCardCountry = [];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < listCountry.length; i++) {
      listWidgetCardCountry.add(CardCountry(
        countryModel: listCountry[i],
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.rocket,
              color: Colors.orange,
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              "Discount Tour",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Country",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8.0,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...listWidgetCardCountry,
                  /*CardCountry(
                    countryModel: listCountry[1],
                  ),*/
                ],
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "Populars Tours",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    CardPopularsTours(),
                    CardPopularsTours(),
                    CardPopularsTours(),
                    CardPopularsTours(),
                    CardPopularsTours(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      /*floatingActionButton:
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),*/
    );
  }
}
