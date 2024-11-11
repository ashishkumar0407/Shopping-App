
import 'package:flutter/material.dart';
import 'package:shopping_app/pages/product_detail.dart';
import 'package:shopping_app/pages/support_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List categories = [
    "images/headphone_icon.png",
    "images/laptop.png",
    "images/watch_icon.png",
    "images/tv.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(225, 235, 231, 231),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0, right: 20.0, left: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "hey, Ashish",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text("Good Morning",
                          style: AppWidget.lightTextFeildStyle()),
                    ],
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "images/boy.png",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ))
                ],
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: " Search Products",
                        hintStyle: AppWidget.lightTextFeildStyle(),
                        prefixIcon: Icon(Icons.search, color: Colors.black)),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories", style: AppWidget.semiboldTextFeildStyle()),
                  Text("See all",
                      style: TextStyle(
                          color: Color(0xFFfd6f3e),
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(children: [
                Container(
                    height: 120,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 254, 133, 33),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text("All",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)))),
                Expanded(
                  child: SizedBox(
                      height: 120,
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: categories.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return CategoryTile(image: categories[index]);
                          })),
                ),
              ]),
              SizedBox(
                height: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("All Products",
                          style: AppWidget.semiboldTextFeildStyle()),
                      Text("See all",
                          style: TextStyle(
                              color: Color(0xFFfd6f3e),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                height: 250,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 10),
                    Container(
                      margin: EdgeInsets
                          .only(right: 20), // Add margin here to move closer to left
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: 
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => NoiceHeadphone(),))
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 24),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/headphone.png",
                                height: 90,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Text(
                                "Noice Headphone",
                                style: AppWidget.semiboldTextFeildStyle(),
                              ),
                              SizedBox(height: 30,),
                              Row(
                                children: [
                                  Text("\$30",
                                      style: TextStyle(
                                          color: Color(0xFFfd6f3e),
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 60),
                                  Container(
                                    decoration:
                                        BoxDecoration(color: Color(0xFFfd6f3e)),
                                    child: Icon(Icons.add, color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets
                          .only(right: 20), // Add margin here to move closer to left
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        margin: EdgeInsets.only(top: 24),
                        child: Column(
                          
                          children: [
                            Image.asset(
                              "images/watch1.png",
                              height: 90,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Noice Watch",
                              style: AppWidget.semiboldTextFeildStyle(),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text("\$37.49",
                                    style: TextStyle(
                                        color: Color(0xFFfd6f3e),
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 60),
                                Container(
                                  decoration:
                                      BoxDecoration(color: Color(0xFFfd6f3e)),
                                  child: Icon(Icons.add, color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),Container(
                      margin: EdgeInsets
                          .only(right: 20), // Add margin here to move closer to left
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        margin: EdgeInsets.only(top: 24),
                        child: Column(
                          
                          children: [
                            Image.asset(
                              "images/keyboard.jpg",
                              height: 90,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Gaming Keyboard",
                              style: AppWidget.semiboldTextFeildStyle(),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text("\$1,049.79",
                                    style: TextStyle(
                                        color: Color(0xFFfd6f3e),
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 60),
                                Container(
                                  decoration:
                                      BoxDecoration(color: Color(0xFFfd6f3e)),
                                  child: Icon(Icons.add, color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),Container(
                      margin: EdgeInsets
                          .only(right: 20), // Add margin here to move closer to left
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        margin: EdgeInsets.only(top: 24),
                        child: Column(
                          
                          children: [
                            Image.asset(
                              "images/mouse.jpg",
                              height: 90,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Gaming Mouse",
                              style: AppWidget.semiboldTextFeildStyle(),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text("\$58.9",
                                    style: TextStyle(
                                        color: Color(0xFFfd6f3e),
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 60),
                                Container(
                                  decoration:
                                      BoxDecoration(color: Color(0xFFfd6f3e)),
                                  child: Icon(Icons.add, color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),),Container(
                      margin: EdgeInsets
                          .only(right: 20), // Add margin here to move closer to left
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        margin: EdgeInsets.only(top: 24),
                        child: Column(
                          
                          children: [
                            Image.asset(
                              "images/macbook.jpg",
                              height: 90,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              height: 40,
                            ),
                            Text(
                              "Macbook Air",
                              style: AppWidget.semiboldTextFeildStyle(),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [
                                Text("\$1500",
                                    style: TextStyle(
                                        color: Color(0xFFfd6f3e),
                                        fontWeight: FontWeight.bold)),
                                SizedBox(width: 60),
                                Container(
                                  decoration:
                                      BoxDecoration(color: Color(0xFFfd6f3e)),
                                  child: Icon(Icons.add, color: Colors.white),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  String image;
  CategoryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          (Icon(Icons.arrow_forward))
        ],
      ),
    );
  }
}
