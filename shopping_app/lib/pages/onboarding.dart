import 'package:flutter/material.dart';
import 'package:shopping_app/pages/login.dart';
import 'package:shopping_app/pages/signup.dart';
import 'package:shopping_app/pages/support_widget.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Container(
          margin: EdgeInsets.only(
            top: 50.0,
            
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Image.asset("images/headphones.png"),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
              ),
              Text("Explore\nThe Best\nProduct",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 20.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn(),))
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 20.0),
                                    padding: EdgeInsets.only(bottom: 20.0),
                                    decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle,),
                                    child: Text("Next",
                      style: AppWidget.boldTextFeildStyle()),
                                  ),
                  )
                ],
              )
              
            ],
          ),
        ));
  }
}
