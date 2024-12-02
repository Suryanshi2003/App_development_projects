import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  var gridValues = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tic Tac Toe"),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Center(
            child: Container(
                child: Column(
          children: [
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemCount: gridValues.length,
              itemBuilder: (context, index) {
                return ("$index");
              },
            )
          ],
        ))));
  }
}
