import 'package:mdi/mdi.dart';
import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ttt_upgraded/utils/widget_functions.dart';
import 'package:ttt_upgraded/utils/moveholder.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final playBoxSize = 0.80 * size.width;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.info)),
          )
        ],
        title: Text(
          "Tic Tac Toe",
          style: GoogleFonts.patrickHand(
              textStyle: const TextStyle(fontSize: 30, color: Colors.white)),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.black87,
        width: size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.blue,
              ),
              height: playBoxSize,
              width: playBoxSize,
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      addHorizontalline(1.5),
                      addHorizontalline(1.5),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      addVerticalline(1.5),
                      addVerticalline(1.5),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 1 / 3 * playBoxSize,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MoveHolder(move: "O"),
                            addHorizontalSpace(playBoxSize / 100),
                            MoveHolder(move: "X"),
                            addHorizontalSpace(playBoxSize / 100),
                            MoveHolder(move: "O")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1 / 3 * playBoxSize,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MoveHolder(move: "O"),
                            addHorizontalSpace(playBoxSize / 100),
                            MoveHolder(move: "X"),
                            addHorizontalSpace(playBoxSize / 100),
                            MoveHolder(move: "X")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1 / 3 * playBoxSize,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            MoveHolder(move: "X"),
                            addHorizontalSpace(playBoxSize / 100),
                            MoveHolder(move: "O"),
                            addHorizontalSpace(playBoxSize / 100),
                            MoveHolder(move: "X")
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
