import 'package:flutter/material.dart';
import './widgets/form.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.teal[500],
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.close),
                      color: Colors.teal[500],
                      onPressed: () {},
                    )
                  ],
                ))
              ],
            ),
          ),
          
          Container(child:Row(
           children: <Widget>[
             DynamicForm()
           ],
          ) ,)

        ],
      ),
      floatingActionButton: new FloatingActionButton(
          onPressed: () => onShowBottomNavigationClicked()),
    );
  }

  void onShowBottomNavigationClicked() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 400,
            child: Container(
              child: buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Theme.of(context).canvasColor,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(20),
                  topRight: const Radius.circular(20),
                ),
              ),
            ),
          );
        });
  }

  Column buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        SizedBox(height: 40.0),
        Container(
          height: 200,
          width: double.infinity,
          child: Image.asset('assets/images/healthcare.jpg'),
        ),
        SizedBox(height: 20.0),
        new Center(
          child:
              // Below is the code which will help you to achive Buttons Bar as show above
              new Row(
            children: <Widget>[
              ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: 170,
                    child: RaisedButton(
                        onPressed: () {},
                        color: Colors.lightBlue[800],
                        child: Text('PATIENT SIGNUP'),
                        padding: EdgeInsets.all(15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(5.0),
                                right: Radius.circular(5.0)))),
                  ),
                  SizedBox(
                    width: 170,
                    child: RaisedButton(
                        onPressed: () {},
                        padding: EdgeInsets.all(15),
                        child: Text("PHYSICIAN SIGNUP"),
                        color: Colors.lightBlue[800],
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(5.0),
                                right: Radius.circular(5.0)))),
                  )
                ],
              )
            ],
            mainAxisSize: MainAxisSize.min,
          ),
        ),
      ],
    );
  }

  void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = name;
    });
  }
}


