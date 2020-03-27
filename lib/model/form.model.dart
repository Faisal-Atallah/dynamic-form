import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FormModel {
  final String labelText;
  final String hintText;
  final int position;
  final bool readOnly;
  final String placeholder;
  final String name;
  final dynamic widget;
  final bool require;
  final bool obscureText;
  final keyboardType;

  FormModel(
      {this.labelText,
      this.hintText,
      this.position,
      this.readOnly,
      this.placeholder,
      this.name,
      this.widget,
      this.require,
      this.obscureText,
      this.keyboardType});

  factory FormModel.fromJson(Map<String, dynamic> json) {
    return FormModel(
        labelText: json['labelText'],
        hintText: json['hintText'],
        position: json['position'],
        readOnly: json['readOnly'],
        placeholder: json['placeholder'],
        name: json['name'],
        widget: json['widget'],
        require: json['require'],
        obscureText: json['obscureText'],
        keyboardType: json['keyboardType']);
  }
}
