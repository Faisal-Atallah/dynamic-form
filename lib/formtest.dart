import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './model/form.model.dart';

void main() {
  //WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/data/form.data.json');
}

class MyApp extends StatelessWidget {
  
  MyApp() {
    //rootBundle.load('assets/data/form.data.json').then(print);
    // loadAsset().then((value) {
    //   final map = json.decode(value);
    //   final decodedJson =
    //       List.from(map).map((o) => FormModel.fromJson(o)).toList();
    //   generateFieldForm(decodedJson);
    //   print(decodedJson[1].placeholder);
    // });
  }

  @override
  Widget build(BuildContext context) {
   

    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 25.0),
        ],
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

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //generateFieldForm(context.de),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                // if (_formKey.currentState.validate()) {
                //   // If the form is valid, display a Snackbar.
                //   Scaffold.of(context)
                //       .showSnackBar(SnackBar(content: Text('Processing Data')));
                // }
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

List<Widget> generateFieldForm(data) {
  return data.map((field) {
    return TextFormField(
      enabled: !field.readOnly,
      //keyboardType: field.keyboardType,
      decoration: InputDecoration(
        hintText: field.hintText,
        labelText: field.labelText,
      ),
      validator: (value) {
        if (field.required) {
          if (value.isEmpty) {
            return 'PLr';
          }
        }
        return '';
      },
    );
  }).toList();
}
