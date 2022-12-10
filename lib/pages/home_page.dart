import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
          centerTitle: false,
          title: const Padding(
              padding: EdgeInsets.only(left: 5.0), child: Text("World Capp")),
          elevation: 10),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            const FadeInImage(
              placeholder: AssetImage('assets/images/loading.gif'),
              image: NetworkImage(
                  'https://cloudfront-us-east-1.images.arcpublishing.com/infobae/WMOJCL27KNEN5HIGUAZJRBPMDI.jpg'),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.green),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:
                      [
                        Text('Partidos en vivo' '      ' '${time.day}' '-' '${time.month}' '-''${time.year}',
                            style: const TextStyle(fontWeight: FontWeight.bold)),
                        const Card(child: Image(image: AssetImage('assets/images/marruecos.png')))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(height: 5),
                      Text('CALL'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.telegram),
                      SizedBox(height: 5),
                      Text('ROUTE'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.share),
                      SizedBox(height: 5),
                      Text('SHARE'),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
