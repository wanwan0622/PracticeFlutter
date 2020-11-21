import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:calculator/main_model.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'time',
      theme: ThemeData(
        primaryColor: Colors.pinkAccent,
      ),
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('現在時刻がわかるよん！'),
          ),
          body: Center (
            child: Consumer<MainModel> (builder: (context, model, child){
              return Column(
                children: [
                  Text(
                    model.now,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  RaisedButton(
                    child: Text('更新！👀'),
                    onPressed: (){
                      model.getTime();
                    },
                  ),
                ],
              );
            })
          ),
        ),
      )
    );
  }
}
