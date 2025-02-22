import 'package:flutter/material.dart';
import 'package:location_form_field/location_form_field.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LocationFormField Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LocationFormField Example'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Container(
                child: LocationFormField(
                  decoration: InputDecoration(labelText: 'Select Location'),
                  markerIconColor: Colors.red,
                  markerIconSize: 50,
                  onChanged: (val) {
                    print(val);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
