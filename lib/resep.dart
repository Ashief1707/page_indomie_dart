import 'package:flutter/material.dart';
import 'package:tugas3_pageindomie/style.dart';

class ResepPages extends StatelessWidget {
  const ResepPages({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width : double.infinity,
                    height : screen.height * 0.5,
                    decoration: BoxDecoration(
                      color: bg_container,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        bottomRight : Radius.circular(25),
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius : BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25),
                          ),
                          child: Image.asset('assets/indomie.png')
                          ),
                          SizedBox(height:30),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Indomie",
                              style: TextStyle(
                                fontSize : 24,
                                color : Colors.white,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Indomie adalah mie instan populer yang dikenal dengan rasa lezat dan bumbu khas. Mudah disajikan dan menjadi favorite di berbagai negara sebagai hidangan cepat dan nikmat.",
                              style : TextStyle(
                                fontSize : 17,
                                color: Colors.white,
                              )
                            ),
                          )
                      ],
                    ),
                  ),
                  Positioned(
                    top : 205,
                    left: 15,
                    child: SizedBox(
                      width : 384,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            height : 50,
                            decoration : BoxDecoration(
                              color : Colors.white,
                              borderRadius : BorderRadius.circular(12),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("4.7/5"),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                )
                              ],
                            )
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration : BoxDecoration(
                              color: Colors.white,
                              borderRadius : BorderRadius.circular(18)
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color : Colors.red,
                              )
                              )
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top : 420,
                    left: 108,
                    child: Container(
                      width : 200,
                      height : 50,
                      alignment: Alignment.center,
                      decoration : BoxDecoration(
                        color : Colors.white,
                        borderRadius: BorderRadius.circular(16)
                      ),
                      child: 
                      Text(
                        "TO-DO",
                        style : TextStyle(
                          fontSize : 18,
                          fontWeight: FontWeight.bold,
                        )
                        )
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

