import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
            padding: EdgeInsets.only(left: 5.0), child: Text("World Capp")),
        elevation: 10,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            FadeInImage(
              placeholder: AssetImage('assets/images/loading.gif'),
              image: NetworkImage(
                  'https://i.blogs.es/1aad84/marvel/1366_521.jpeg'),
            ),
            Container(
              color: Color.fromARGB(31, 220, 36, 36),
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Titulo de prueba principal',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('Subtítulo de prueba'),
                      ],
                    ),
                  ),
                  Icon(Icons.star_outline),
                  Text('50')
                ],
              ),
            ),
            Container(
              color: Colors.black12,
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 20),
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
            Container(
                margin: EdgeInsets.all(20),
                child: Text(
                    'Non nisi sint nostrud laborum cillum ut labore veniam. Laboris ullamco dolor fugiat deserunt cupidatat ipsum sit amet in elit consectetur magna aliquip consectetur. Quis velit do in ea commodo tempor tempor mollit. Non in labore enim consectetur nulla incididunt nisi quis laborum do nostrud nostrud. Amet commodo mollit magna incididunt incididunt reprehenderit non. Reprehenderit esse quis nisi minim consectetur qui eu pariatur proident sint. Sint commodo sit aute duis enim culpa ad cupidatat in.'))
          ]),
        ),
      ),
    );
  }
}
