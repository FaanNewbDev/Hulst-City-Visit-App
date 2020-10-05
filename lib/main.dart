import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Homepage(),
      ),
    );

class Homepage extends StatelessWidget {
  final List<String> _listItem = [
    'assets/images/ihulst_white_logo.png',
    'assets/images/ihulst_white_logo.png',
    'assets/images/ihulst_white_logo.png',
    'assets/images/ihulst_white_logo.png',
    'assets/images/ihulst_white_logo.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Colors.green[50],
            Colors.green[300],
          ],
        ),
        //image: DecorationImage(
        //  image: AssetImage('assets/images/2985315.jpg'),
        //  fit: BoxFit.cover,
        //),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            'Welcome & Explore',
            style: TextStyle(color: Colors.grey[600]),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.grey[700],
          ),
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/images/ihulst_white_logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  height: 250.0,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 10.0),
                      Text(
                        'EVENTS',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    children: _listItem
                        .map(
                          (item) => Card(
                            elevation: 0,
                            color: Colors.transparent,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 7,
                                    offset: Offset(0, 3),
                                  )
                                ],
                                image: DecorationImage(
                                  image: AssetImage(item),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
