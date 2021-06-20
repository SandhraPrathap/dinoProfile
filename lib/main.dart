import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Profile()));
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
            Color.fromRGBO(76, 0, 123, 1),
            Color.fromRGBO(149, 0, 240, 1),
          ])),
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.of(context).size.height / 12,
            right: MediaQuery.of(context).size.width / 10,
            child: Container(
                height: MediaQuery.of(context).size.width / 6,
                width: MediaQuery.of(context).size.width / 6,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(254, 254, 255, 0.62))),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 12,
            left: MediaQuery.of(context).size.width / 8,
            child: Container(
                height: MediaQuery.of(context).size.width / 12,
                width: MediaQuery.of(context).size.width / 12,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(254, 254, 255, 0.62))),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * (2 / 3),
                  width: MediaQuery.of(context).size.width * (2 / 3),
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * (2 / 3),
              width: MediaQuery.of(context).size.width * (2 / 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color.fromRGBO(255, 255, 255, 0.5),
                        Color.fromRGBO(255, 154, 154, 0.68),
                      ])),
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height / 4,
                left: MediaQuery.of(context).size.width / 5,
                child: Container(
                  height: MediaQuery.of(context).size.height * (1 / 2),
                  width: MediaQuery.of(context).size.width * (1 / 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.09),
                            Color.fromRGBO(255, 255, 255, 0.76),
                          ])),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3.5,
                left: MediaQuery.of(context).size.width / 4.8,
                child: Column(
                  
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.height / 8,
                      height: MediaQuery.of(context).size.height / 8,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage("image/dino.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      "Sandhra Prathap",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'RobotoMono'),
                    ),
                    Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("image/flutter.png"),
                                fit: BoxFit.cover)),
                        child: TextButton(
                          child: Text(""),
                          onPressed: () {},
                        ))
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4,
            left: MediaQuery.of(context).size.width / 3.5,
            child: Container(
              height: MediaQuery.of(context).size.height * (1 / 2),
              width: MediaQuery.of(context).size.width * (1 / 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '''BLAH
                blah
                            Blah''',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontFamily: 'RobotoMono'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("image/insta.png"),
                                  fit: BoxFit.cover)),
                          child: TextButton(
                            child: Text(""),
                            onPressed: () {},
                          )),
                      SizedBox(width: 30),
                      Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("image/linkedin.png"),
                                  fit: BoxFit.cover)),
                          child: TextButton(
                            child: Text(""),
                            onPressed: () {},
                          )),
                      SizedBox(width: 30),
                      Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("image/github 1.png"),
                                  fit: BoxFit.cover)),
                          child: TextButton(
                            child: Text(""),
                            onPressed: () {},
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}