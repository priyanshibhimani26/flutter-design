import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

int _current = 0;

class Page_2 extends StatefulWidget {
  @override
  State<Page_2> createState() => _Page_2State();
}

class _Page_2State extends State<Page_2> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      //"https://b.zmtcdn.com/data/pictures/1/20112071/dee3c2ccaf797fd427d119c2fbf79cb1.jpg",
      "https://www.shutterstock.com/image-photo/italian-pizza-ham-salami-black-260nw-1824157430.jpg",
      "https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2022/04/9956e-hyderabad-dishes.jpg?fit=1000%2C667&ssl=1",
      "https://thumbs.dreamstime.com/b/vietnamese-vegan-bun-bo-hue-delicious-fresh-prepared-chay-vegetarian-soup-served-local-restaurant-mui-ne-vietnam-192224977.jpg"
    ];
    final List<String> dishes =[
      'Pizza',
      'Cheese Burgur',
      'Rasmalai'
    ];
    List<Widget> generateImageTiles(){
      return imgList.map((e) => ClipRRect(child: Image.network(e,fit:BoxFit.cover,),borderRadius: BorderRadius.circular(15),)).toList();
    }


    return Scaffold(
      body: Row(
        children: [
          Expanded(child: Container()),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Text(
                      textDirection: TextDirection.ltr,
                      'What do you want \nto cook today?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Lora",
                        fontSize: 30,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 30)),
                Container(
                  child: Row(
                    children: [
                      //Expanded(child: Container()),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 35, left: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              hintText: "search",
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(45),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Color(0xFFEF5350),
                              ),
                              prefixIconColor: Color(0xFFEF5350),
                            ),
                          ),
                        ),
                      ),
                      //Expanded(child: Container()),
                    ],
                  ),
                ),
                Container(
                    child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          child: (Text(
                            "     populer launch recipies",
                            style: TextStyle(
                                fontFamily: "Fredoka_One", fontSize: 15),
                          )),
                          margin: EdgeInsets.only(top: 20, left: 20),
                        ),
                        flex: 2),
                    Expanded(
                        child: Container(
                      child: Text("view all",
                          style: TextStyle(
                              fontFamily: "Fredoka_One",
                              fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      padding: EdgeInsets.only(left: 50),
                      margin: EdgeInsets.only(top: 20),
                    ))
                  ],
                )),
                Expanded(child: Stack(
                  fit: StackFit.expand,
                  children: [

                    CarouselSlider(

                        items: generateImageTiles(), options: CarouselOptions(
                      enlargeCenterPage: true,
                      aspectRatio: 21/20,

                      onPageChanged: (index , other){
                        setState(() {
                          _current =  index;
                        });
                      }
                    )),
                    Center(child: Container(margin: EdgeInsets.only(top: 250,left: 300),
                        child: Text(dishes[_current],style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.bold,fontFamily: 'Fredoka_One',fontSize: 35),)))
                    ,Center(child: Container(margin:EdgeInsets.only(top: 300,left: 300),child: Text("20 min",style: TextStyle(fontFamily: "Fredoka_One",fontSize: 22,fontWeight:FontWeight.bold,color: Colors.white),)))
                  ],
                ),flex: 15,),

                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.home,
                                color: Color(0xFFEF5350), size: 30),
                          ),
                          margin: EdgeInsets.only(left: 20),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.search,
                                color: Color(0xFFEF5350), size: 30),
                          ),
                          margin: EdgeInsets.only(left: 20),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.delete_outline,
                                color: Color(0xFFEF5350), size: 30),
                          ),
                          margin: EdgeInsets.only(left: 20),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.save,
                                color: Color(0xFFEF5350), size: 30),
                          ),
                          margin: EdgeInsets.only(left: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            flex: 200,
          ),
          Expanded(child: Container()),
        ],
      ),

    );

  }
}
