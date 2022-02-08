import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTextWidget extends StatelessWidget {
  const CardTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // https://www.youtube.com/watch?v=sr0v1cfloJc
    return Container(
      margin: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 5.0,
        bottom: 0,
          ),
      padding: EdgeInsets.all(5.0),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container (
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                ),
                // Тут должна подсасываться фотография из БД
                //child: ,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              // Тут должны подсасываться название
              Text("Сноуборд детский",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Тут должна находиться цена
                  Text.rich(
                    TextSpan(
                      text: "176",
                      style: TextStyle(
                        color: Colors.black45,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
