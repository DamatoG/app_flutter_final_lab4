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
      body: Container(
        height: 1000,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.black45, Colors.black12],
        )),
        child: SingleChildScrollView(
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
                    color: Colors.blueGrey),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('Partidos en vivo'),
                                Text(
                                    '${time.day}'
                                    '-'
                                    '${time.month}'
                                    '-'
                                    '${time.year}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))
                              ]),
                          Card(
                              color: Colors.blueGrey,
                              elevation: 0,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text('0'),
                                    const Image(
                                        width: 60,
                                        height: 60,
                                        image: AssetImage(
                                            'assets/images/logos/logo-marruecos.png')),
                                    Column(
                                      children: [Text('VS'), Text('36' "'")],
                                    ),
                                    const Image(
                                        width: 60,
                                        height: 60,
                                        image: AssetImage(
                                            'assets/images/logos/logo-francia.png')),
                                    const Text('1')
                                  ])),
                          Card(
                              color: Colors.blueGrey,
                              elevation: 0,
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Text('0'),
                                    const Image(
                                        width: 60,
                                        height: 60,
                                        image: AssetImage(
                                            'assets/images/logos/logo-argentina.png')),
                                    Column(
                                      children: [Text('VS'), Text('32' "'")],
                                    ),
                                    const Image(
                                        width: 60,
                                        height: 60,
                                        image: AssetImage(
                                            'assets/images/logos/logo-inglaterra.png')),
                                    const Text('0')
                                  ]))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'listGames');
                },
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.blueGrey),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Proximos Partidos'),
                                  Text(
                                      '${time.day + 3}'
                                      '-'
                                      '${time.month}'
                                      '-'
                                      '${time.year}',
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold))
                                ]),
                            Card(
                                color: Colors.blueGrey,
                                elevation: 0,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text('0'),
                                      Image(
                                          width: 60,
                                          height: 60,
                                          image: AssetImage(
                                              'assets/images/logos/logo-holanda.png')),
                                      Text('VS'),
                                      Image(
                                          width: 60,
                                          height: 60,
                                          image: AssetImage(
                                              'assets/images/logos/logo-croacia.png')),
                                      Text('0')
                                    ])),
                            Card(
                                color: Colors.blueGrey,
                                elevation: 0,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Text('0'),
                                      Image(
                                          width: 60,
                                          height: 60,
                                          image: AssetImage(
                                              'assets/images/logos/logo-brasil.png')),
                                      Text('VS'),
                                      Image(
                                          width: 60,
                                          height: 60,
                                          image: AssetImage(
                                              'assets/images/logos/logo-portugal.png')),
                                      Text('0')
                                    ]))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
