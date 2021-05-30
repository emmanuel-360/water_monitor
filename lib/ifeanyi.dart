import 'package:flutter/material.dart';

class Ifeanyi extends StatefulWidget {
  @override
  _IfeanyiState createState() => _IfeanyiState();
}

class _IfeanyiState extends State<Ifeanyi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Group 10 Water Controller'),
          centerTitle: true,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.timer),
                      labelText: 'Set Timer',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      //.
                    },
                    items: <DropdownMenuItem<String>>[
                      /*DropdownMenuItem(
                        value: '10 Minutes',
                        child: Text('10 Minutes'),
                      ),
                      DropdownMenuItem(
                        child: Text('20 Minutes'),
                      ),
                      DropdownMenuItem(
                        child: Text('30 Minutes'),
                      ),
                      DropdownMenuItem(
                        child: Text('40 Minutes'),
                      ),
                      DropdownMenuItem(
                        child: Text('50 Minutes'),
                      ),*/
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: 300.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      child: Text(
                        'Start Pump',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: 200.0,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.red),
                      ),
                      child: Text(
                        'Stop Pump',
                        style: TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    'Water Level Indicator',
                    style: TextStyle(fontSize: 30.0),
                  ),
                  SizedBox(height: 50),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        width: 300.0,
                        height: 300.0,
                        child: CircularProgressIndicator(
                          value: 0.5,
                          strokeWidth: 10.0,
                        ),
                      ),
                      Text(
                        '50%',
                        style: TextStyle(
                          fontSize: 50.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
