import 'package:flutter/material.dart';
import 'package:shopping_app/pages/support_widget.dart';

class NoiceHeadphone extends StatefulWidget {
  const NoiceHeadphone({super.key});

  @override
  State<NoiceHeadphone> createState() => _NoiceHeadphoneState();
}

class _NoiceHeadphoneState extends State<NoiceHeadphone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  margin: EdgeInsets.only(left: 20.0),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(Icons.arrow_back_ios_new_outlined)),
            ),
            Center(
                child: Image.asset(
              "images/headphone.png",
              height: 300,
            )),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Noise Headphone",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            )),
                        Text("\$30",
                            style: TextStyle(
                                color: Color(0xFFfd6f3e),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),SizedBox(height: 5.0,),
                    Text("Details",style: AppWidget.semiboldTextFeildStyle(),),
                    Text("These Noise Cancellation Bluetooth Headphones are designed for true audio enthusiasts. With ANC technology, they allow you to enjoy your music, podcasts, or calls without interruption. The headphones offer premium sound quality with balanced mids and rich bass, providing a superior listening experience."),
                    Text("Warranty",style: AppWidget.semiboldTextFeildStyle(),),
                    Text("1-year manufacturer warranty covering defects and repairs."),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Color(0xFFfd6f3e),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),)),
                    )
                  
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
