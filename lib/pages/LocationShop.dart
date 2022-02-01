import 'package:flutter/material.dart';
import 'package:moneymanager/servises/constants.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            color: Colors.black,
            icon: Icon(
              Icons.arrow_back
            )
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child:
            Column(
              children: [
                // Карта
                Container(
                  margin: EdgeInsets.only(top: defaultPadding*2, bottom: defaultPadding),
                  width: 350,
                  height: 330,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                        image: AssetImage('assets/maps/dksportmainoffice.png')
                    ),
                  ),
                ),
                // Проложить маршрут
                Container(
                  margin: EdgeInsets.symmetric(vertical: defaultPadding),
                  width: widthButton,
                  height: heightButton,
                  child:
                    ElevatedButton(
                      onPressed: (){},
                      child: Wrap(
                        children: <Widget>[
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: defaultIconSize,
                          ),
                          SizedBox(
                            width: defaultPadding/2,
                          ),
                          Text("Проложить маршрут",
                              style: TextStyle(
                                  fontSize: fontSizeText,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                        ],
                      ),
                    ),
                ),
                // Instagram
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: widthButton,
                  height: heightButton,
                  child:
                    ElevatedButton(
                      onPressed: (){},
                      child: Wrap(
                        children: <Widget>[
                          Icon(
                            Icons.social_distance_sharp,
                            color: Colors.white,
                            size: defaultIconSize,
                          ),
                          SizedBox(
                            width: defaultPadding/2,
                          ),
                          Text("Посмотреть круть",
                              style: TextStyle(
                                  fontSize: fontSizeText,
                                  fontWeight: FontWeight.bold
                              )
                          ),
                        ],
                      ),
                    ),
                ),
              ],
            ),
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.5), BlendMode.dstATop),
            image: AssetImage(
              'assets/backgroundimages/backgroundmanwithsnowboard_locationshop.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
