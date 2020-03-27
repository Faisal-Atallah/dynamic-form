import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/form.model.dart';

var  decodedJson;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/data/form.data.json');
}

class DynamicForm extends StatefulWidget {
  DynamicForm() {
    loadAsset().then((value)  {
      final map = json.decode(value);
      decodedJson =  List.from(map).map((o) => FormModel.fromJson(o)).toList();

      print(decodedJson[1].placeholder);
      //generateFieldForm(decodedJson);
    });
  }

  @override
  DynamicFormState createState() {
    return DynamicFormState();
  }
}

class DynamicFormState extends State<DynamicForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: generateFieldForm(),
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
