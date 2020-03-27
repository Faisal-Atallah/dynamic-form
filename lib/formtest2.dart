import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './model/form.model.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

var decodedJson;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/data/form.data.json');
}

class MyApp extends StatelessWidget {
  MyApp() {
   
    loadAsset().then((value) {
      final map = json.decode(value);
      decodedJson = List.from(map).map((o) => FormModel.fromJson(o)).toList();

      print(decodedJson[1].placeholder);
      //generateFieldForm(decodedJson);
    });
  }

  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Form Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class, which holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget>[
           
        ] ,
      ),
    );
  }
}

List<Widget> generateFieldForm() {
  return decodedJson.map((field) {
    return TextFormField(
      enabled: !field.readOnly,
      //keyboardType: field.keyboardType,

      decoration: InputDecoration(
        hintText: field.hintText,
        labelText: field.labelText,
      ),

      validator: (value) {
        if (field.require) {
          if (value.isEmpty) {
            return 'PLr';
          }
        }

        return null;
      },
    );
  }).toList();
}
