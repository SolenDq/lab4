import 'package:flutter/material.dart';
import 'dart:math';

//var _array = new List.empty(growable: true);
List _array = [];
num stepen = 0;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Степени числа 2',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Степени числа "2"'),
        ),
        body: ListView.builder(
          itemBuilder: (context, i) {
            print('num $i : нечетное = ${i.isOdd}');
            if (i.isOdd) return Divider();
            final int index = i ~/ 2;
            stepen = pow(2, index);
            print('index $index');
            print('length ${_array.length}');
            if (index >= _array.length)
              _array.addAll(['$index', '${index + 1}', '${index + 2}']);
            return ListTile(title: Text('$stepen'));
          },
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}
