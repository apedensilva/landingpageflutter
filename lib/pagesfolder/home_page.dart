// ignore_for_file: prefer_const_constructors, unnecessary_import, camel_case_types, sized_box_for_whitespace, unused_import, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landingpage/constantsfolder/colors.dart';
import 'package:landingpage/constantsfolder/nav_bar.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    final double currentwidth = MediaQuery.of(context).size.width;
    final double currentheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        scrollDirection:
            Axis.vertical, //Scroll direction (Default is horizontal)
        children: [
          //Main
          Expanded(
            flex: 8,
            child: Container(
              height: currentheight * 1.2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/primatesnew/headerbg.png'),
                    fit: BoxFit.fitHeight, //to set background image
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(92, 44, 125, 160).withOpacity(0.3),
                        BlendMode.dstATop)), //colorfilter for transparency
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: currentwidth * 0.02,
                    top: currentheight * 0.01,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 80,
                        ),
                        Image.asset(
                          'lib/assets/primatesnew/logo.png',
                          height: 50,
                          fit: BoxFit.fitHeight,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Primates',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        // Spacer(), //For separation
                        for (int i = 0;
                            i < navTitles.length;
                            i++) //For loop para sa numbers of button
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 6, 5, 0),
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  navTitles[i],
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: currentwidth * 0.3,
                    top: currentheight * 0.3,
                    child: Column(
                      children: [
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'THE AGE OF PRIME \n IS HERE ',
                                style: TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                                children: <TextSpan>[
                                  //Padding(padding: EdgeInsets.all(8.0))
                                  TextSpan(
                                      text: 'RIGHT NOW',
                                      style: TextStyle(
                                          fontSize: 50,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                          background: Paint()
                                            ..color = Colors.amber))
                                ])),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet. Sit dolorum labore qui possimus voluptatibus \n ut aliquam deserunt est porro dolorem sit dolores assumenda eos fugit perferendis qui excepturi sunt.',
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              //Textbutton styles
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.white,
                              padding:
                                  const EdgeInsets.fromLTRB(35, 20, 35, 20)),
                          child: Text(
                            'View Offers',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //WORK
          Expanded(
            flex: 8,
            child: Container(
              height: currentheight * 1,
              width: currentwidth * 1,
              color: Color.fromRGBO(218, 210, 216, 1),
              child: Stack(
                children: [
                  Positioned(
                      top: currentheight * -0.1,
                      left: currentwidth * 0.02,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50, 230, 25, 25),
                            child: Image.asset(
                              'lib/assets/primatesnew/samplework.png',
                              height: 350,
                            ),
                          ),
                        ],
                      )),
                  Positioned(
                    left: currentwidth * 0.5,
                    top: currentheight * 0.2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BEST WORK 1',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 50,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.start,
                        ),
                        Text('TAGLINE 1',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left),
                        Text(
                            'Lorem ipsum dolor sit amet. Sit dolorum labore qui possimus voluptatibus ut aliquam deserunt est porro \n dolorem sit dolores sit marites matres burgir',
                            style: TextStyle(color: Colors.black)),
                        SizedBox(
                          height: 120,
                        ),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.amber,
                              foregroundColor: Colors.white),
                          child: Text(
                            'VIEW MORE',
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //ABOUT
          Expanded(
            child: Container(
              height: currentheight * 1.2,
              width: currentwidth * 0.8,
              color: Color.fromRGBO(218, 210, 216, 1),
              child: Stack(
                children: [
                  Positioned(
                    left: 150,
                    top: 10,
                    child: Text(
                      'SERVICES',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 48,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    left: 300,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset('lib/assets/primatesnew/icon1.png'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Number 1',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Lorem ipsum na super sobrang napakahaba na di ko alam bakit apakahaba',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ), // 1st service

                  Positioned(
                    top: 100,
                    left: 650,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset('lib/assets/primatesnew/icon2.png'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Number 2',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Lorem ipsum na super sobrang napakahaba na di ko alam bakit apakahaba',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ), //2nd service

                  Positioned(
                    top: 100,
                    left: 1000,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset('lib/assets/primatesnew/icon3.png'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Number 3',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Lorem ipsum na super sobrang napakahaba na di ko alam bakit apakahaba',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ), //3rd service

                  Positioned(
                    top: 450,
                    left: 300,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset('lib/assets/primatesnew/icon1.png'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Number 4',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Lorem ipsum na super sobrang napakahaba na di ko alam bakit apakahaba',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ), //4th service

                  Positioned(
                    top: 450,
                    left: 650,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset('lib/assets/primatesnew/icon2.png'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Number 5',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Lorem ipsum na super sobrang napakahaba na di ko alam bakit apakahaba',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ), //5th service

                  Positioned(
                    top: 450,
                    left: 1000,
                    child: Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset('lib/assets/primatesnew/icon3.png'),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Number 6',
                            style: TextStyle(fontSize: 32, color: Colors.black),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Lorem ipsum na super sobrang napakahaba na di ko alam bakit apakahaba',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ), //6th service
                ],
              ),
            ),
          ),

          //Contacts
          Expanded(
            flex: 5,
            child: Container(
              height: currentheight * 1,
              width: currentwidth * 0.3,
              color: Color.fromRGBO(20, 54, 66, 1),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 500,
                      width: 800,
                      decoration: BoxDecoration(
                        border: Border.all(
                            style: BorderStyle.solid,
                            width: 5,
                            color: Colors.white),
                        color: Color.fromRGBO(34, 34, 34, 1),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 30,
                            left: 60,
                            child: Text(
                              'REACH OUT TO US!!!',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            left: 60,
                            top: 70,
                            child: Text(
                              'SUB TAG LINE!!!',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                              top: 120,
                              left: 90,
                              child: Text('Name:',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                          //Name Textfield
                          Positioned(
                              top: 150,
                              left: 90,
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: null),
                              )),
                          Positioned(
                              top: 120,
                              left: 440,
                              child: Text('Email:',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                          //Email Textfield
                          Positioned(
                              top: 150,
                              left: 440,
                              width: 300,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: null),
                              )),
                          Positioned(
                              top: 220,
                              left: 90,
                              child: Text('Message:',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))),
                          //Textfield Message
                          Positioned(
                              top: 250,
                              left: 90,
                              width: 650,
                              child: TextField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: null),
                              )),
                          Positioned(
                              left: 100,
                              top: 430,
                              width: 600,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.amber),
                                onPressed: () {},
                                child: Text(
                                  'Send Message',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //FOOTER
          Expanded(
              child: Container(
            color: Colors.black,
            height: currentheight * 0.2,
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/assets/primatesnew/soc1.png'),
                    Image.asset('lib/assets/primatesnew/soc2.png'),
                    Image.asset('lib/assets/primatesnew/soc3.png'),
                  ],
                ),
                Positioned(
                    left: currentwidth * 0.34,
                    top: currentheight * 0.08,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            '___________________________________________________________________________'),
                        Text('© All Rights Reserved 2024')
                      ],
                    )),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
