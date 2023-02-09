import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Card Example'),
          centerTitle: true,
        ),
        body: MyCardWidget(),
      ),
    );
  }
}
class MyCardWidget extends StatefulWidget {
  const MyCardWidget({Key? key}) : super(key: key);

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        padding: new EdgeInsets.all(10.0),
        child: Card(
          color: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 12.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                leading: Icon(Icons.album, size: 50, color: Colors.blue,),
                title: Text('Sonu Nigam',
                style: TextStyle(fontSize: 30.0, color: Colors.blue),),
                subtitle: Text('Best of Sonu Nigam',
                    style: TextStyle(fontSize: 18.0) ),
              ),
              ButtonBar(
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      child: Text('Play')
                  ),
                  ElevatedButton(
                      onPressed: (){},
                      child: Text('Pause')
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

