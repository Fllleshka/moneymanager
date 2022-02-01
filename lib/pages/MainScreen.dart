import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moneymanager/servises/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pushNamed(context, '/location_shop');
            },
            color: Colors.black,
            icon: Icon(
              Icons.location_on,
            ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,

      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Логотип DK Sport
            Container(
              width: 336,
              height: 172,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo/dksportlogo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //Кнопка "В магазин"
            Container(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                    padding: MaterialStateProperty.all(EdgeInsets.only(
                      top: verticalPadding,
                      bottom: verticalPadding,
                      right: horizontalPadding,
                      left: horizontalPadding,
                    )
                    ),
                    textStyle: MaterialStateProperty.all(TextStyle(fontSize: 25))
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/shop');
                },
                child: Text("В магазин")
              ),
            ),
            //Кнопка "В прокат"
            Container(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent),
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                        top: verticalPadding,
                        bottom: verticalPadding,
                        right: horizontalPadding,
                        left: horizontalPadding,
                      )
                      ),
                      textStyle: MaterialStateProperty.all(TextStyle(fontSize: 25))
                  ),
                  onPressed: (){
                    Navigator.pushNamed(context, '/rental');
                  },
                  child: Text("В прокат")
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage(
              'assets/backgroundimages/backgroundmanwithsnowboard_mainscreen.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}