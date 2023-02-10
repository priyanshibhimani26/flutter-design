import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobiledesign/page3.dart';
import 'package:mobiledesign/page4.dart';
import 'package:mobiledesign/page5.dart';

int current = 0;

class Page2 extends StatefulWidget {
  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    // final List<String> imgList = [
    //   //"https://b.zmtcdn.com/data/pictures/1/20112071/dee3c2ccaf797fd427d119c2fbf79cb1.jpg",
    //   "https://www.shutterstock.com/image-photo/italian-pizza-ham-salami-black-260nw-1824157430.jpg",
    //   "https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2022/04/9956e-hyderabad-dishes.jpg?fit=1000%2C667&ssl=1",
    //   "https://thumbs.dreamstime.com/b/vietnamese-vegan-bun-bo-hue-delicious-fresh-prepared-chay-vegetarian-soup-served-local-restaurant-mui-ne-vietnam-192224977.jpg"
    // ];
    // final List<String> dishes =[
    //   'Pizza',
    //   'Cheese Burgur',
    //   'Rasmalai'
    // ];
    // List<Widget> generateImageTiles(){
    //   return imgList.map((e) => ClipRRect(child: Image.network(e,fit:BoxFit.cover,),borderRadius: BorderRadius.circular(15),)).toList();
    // }

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
                        fontSize: 26,
                      ),
                    ),
                    margin: EdgeInsets.only(left: 10, top: 30)),
                Container(
                  child: Row(
                    children: [
                      //Expanded(child: Container()),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(top: 15, left: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              // contentPadding: const EdgeInsets.symmetric(
                              // vertical: 5, horizontal: 5),
                              hintText: "Recipe",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                              fillColor: Color(0xFFF5F5F5),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(55),
                                borderSide: BorderSide.none,
                              ),
                              prefixIcon: const Icon(
                                Icons.search_outlined,
                                color: Color(0xFFEF5350),
                                size: 30,
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
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Container(
                          child: (Text(
                            "Populer launch recipies",
                            style: TextStyle(
                                fontFamily: "Questrial",
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                          margin: EdgeInsets.only(top: 10, left: 15),
                        ),
                        flex: 2),
                    Expanded(
                        child: Container(
                      child: Text("View all",
                          style: TextStyle(
                              fontFamily: "Questrial",
                              //fontWeight: FontWeight.bold,
                              color: Colors.grey)),
                      padding: EdgeInsets.only(left: 50),
                      margin: EdgeInsets.only(top: 15),
                    ))
                  ],
                ),flex: 2,),
                Expanded(
                  child: Container(

                    margin: EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Container(
                          //alignment: Alignment.center,
                          height: 316,
                          width: double.infinity,
                          child: CarouselSlider(
                            items: [
                              InkWell(
                                child: Stack(
                                  children: [
                                    Container(
                                      height:600,
                                      width: 200,
                                      //margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                      // margin: EdgeInsets.only(top: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                                'https://i0.wp.com/stanzaliving.wpcomstaging.com/wp-content/uploads/2022/04/9956e-hyderabad-dishes.jpg?fit=1000%2C667&ssl=1'
                                               //'assets/images/ss2.jpg',
                                            ),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Container(
                                        margin:
                                            EdgeInsets.only(top: 240,left:  15),
                                        child: Text(
                                          "Shahi\nTukda",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: "Fredoka_One",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                    Container(
                                        margin:
                                            EdgeInsets.only(top: 300, left: 15),
                                        child: Text(
                                          "20 min",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Fredoka_One",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ))
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return Page3();
                                  }));
                                },
                              ),
                              InkWell(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 600,
                                      width: 200,
                                     // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                     // margin: EdgeInsets.only(top: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              //'https://b.zmtcdn.com/data/pictures/1/20112071/dee3c2ccaf797fd427d119c2fbf79cb1.jpg'
                                           // 'assets/images/images.jpg'
                                              'assets/images/dish4.jpg'
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                        margin:
                                       EdgeInsets.only(top: 243,left: 10),
                                        child: Text(

                                      " Cheese \n Burger",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontFamily: "Fredoka_One",
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )),
                                    Container(
                                        margin:
                                            EdgeInsets.only(top: 300,left: 20),
                                        child: Text(
                                          "20 min",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Fredoka_One",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ))
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return Page4();
                                      }));
                                },
                              ),
                              InkWell(
                                child: Stack(
                                  children: [
                                    Container(
                                      height: 600,
                                      width: 200,
                                     // margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                                     // margin: EdgeInsets.only(top: 15),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: NetworkImage(
                                               //'https://thumbs.dreamstime.com/b/vietnamese-vegan-bun-bo-hue-delicious-fresh-prepared-chay-vegetarian-soup-served-local-restaurant-mui-ne-vietnam-192224977.jpg'
                                              'assets/images/ss1.jpg'
                                              ),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    Container(
                                        margin:
                                            EdgeInsets.only(top: 270,left: 20),
                                        child: Text(
                                          "Samosa",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontFamily: "Fredoka_One",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                    Container(
                                        margin:
                                            EdgeInsets.only(top: 300,left: 20),
                                        child: Text(
                                          "20 min",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontFamily: "Fredoka_One",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ))
                                  ],
                                ),
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return Page5();
                                      }));
                                },
                              ),
                            ],
                            options: CarouselOptions(
                                autoPlay: true,
                                aspectRatio:8/38,
                                onPageChanged: (index, other) {
                                  setState(() {
                                    print(other.toString());
                                    current = index;
                                  });
                                }),
                          ),
                        )
                      ],
                    ),
                  ),
                  flex: 15,
                ),
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
                                color: Color(0xFFEF5350), size: 25),
                          ),
                          margin: EdgeInsets.only(left: 25, ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.search,
                                color: Color(0xFFEF5350), size: 25),
                          ),
                          margin: EdgeInsets.only(left: 45 ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.delete_outline,
                                color: Color(0xFFEF5350), size: 25),
                          ),
                          margin: EdgeInsets.only(left: 55,),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.bookmark_border_outlined,
                                color: Color(0xFFEF5350), size: 25),
                          ),

                          margin: EdgeInsets.only(left: 25),
                        ),flex: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            flex: 20,
          ),
          Expanded(child: Container(

          )),
        ],
      ),
    );
  }
}
