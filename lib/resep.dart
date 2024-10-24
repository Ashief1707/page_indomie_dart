import 'package:flutter/material.dart';
import 'package:tugas3_pageindomie/style.dart';

class ResepPages extends StatelessWidget {
  ResepPages({super.key});

  List steps = [
    "Rebus air secukupnya hingga mendidih.",
    "Masukkan mie ke dalam air mendidih dan rebus selama 3-4 menit.",
    "Siapkan bumbu dengan menuangkan ke dalam mangkuk.",
    "Tiriskan mie jika tidak ingin berkuah, atau langsung tuang ke mangkuk.",
    "Campurkan mie dengan bumbu dan aduk hingga merata.",
    "Hidangkan mie dengan tambahan sesuai selera."
  ];

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
           child : Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  //information
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
                  //rating and favorite
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
                                Text("4.7 / 5"),
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
                            child: const ButtonFavorite(),
                          )
                        ],
                      ),
                    ),
                  ),
                  //todo
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
              ),
              SizedBox(height: 30),
              Expanded(
                child: ListView.builder(
                  itemCount: steps.length, 
                  itemBuilder: (context, index) => Container(
                    height: 75,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical : 7
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      leading: Text('${index+1}',style: TextStyle(fontSize: 18)),
                      title: Text(
                        steps[index],
                        style: TextStyle(
                          fontSize : 14
                        ),
                        ),
                      trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.check_box, color: icon_color),
                                  ),
                    ),
                  )
                ),
              )
            ],
          ),
      )
    );
  }
}

class ButtonFavorite extends StatefulWidget {
  const ButtonFavorite({
    super.key,
  });
  
  @override
  State<StatefulWidget> createState() => _ButtonFavorite();
}

class _ButtonFavorite extends State<ButtonFavorite>{

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        onPressed: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        icon : Icon(
          isSelected ? Icons.favorite : Icons.favorite_outline,
          color: const Color.fromARGB(255, 255, 0, 0),
          size: 26,
          )
      )
    );
  }

}

