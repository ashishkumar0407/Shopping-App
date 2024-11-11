import 'package:flutter/material.dart';
import 'package:shopping_app/pages/login.dart';
import 'package:shopping_app/pages/support_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}


class _SignupState extends State<Signup> {
  String? name , email, password, confirmpassword , phonenum;
  
  TextEditingController namecontroller = TextEditingController();
  TextEditingController maincontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonenumcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  registration() async {
    
  if (password != null && name != null && email != null && phonenum != null && confirmpassword!= null) {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email!,
        password: password!,
      );
      
  
  

      // Handle successful registration (e.g., show a success message)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Registered Successfully", style: TextStyle(fontSize: 15)),
        ),
      );
    } on FirebaseAuthException catch (e) {
      // Handle specific Firebase authentication errors
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      } else {
        print('An unexpected error occurred: ${e.code}');
      }

      // Show an error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration Failed: ${e.message}'),
        ),
      );
    } 
    
    catch (e) {
      // Handle other potential errors
      print('An error occurred during registration: $e');
      // Show an error message to the user
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Registration Failed: An error occurred'),
        ),
      );
    }
  } else {
    // Handle the case where one or more fields are empty
    print('Please fill in all fields.');
    // Show an error message to the user
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Please fill in all fields'),
      ),
    );
  }
}
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("images/login.jpg"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sign up",
                      style: AppWidget.semiboldTextFeildStyle(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Your Account",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black45,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return "Please Enter Your Username ";
                      }
                      return null;
                    },
                    controller: maincontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone number ,username ,or email"),
                  ),
                ),SizedBox(
                  height: 10,
                ),
                
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return "Please Enter Your Name";
                      }
                      return null;
                    },
                    controller: namecontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(validator: (value) {
                      if(value==null||value.isEmpty){
                        return "Please Enter Your Password";
                      }
                      return null;
                    },
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Password"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    validator: (value) {
                      if(value==null||value.isEmpty){
                        return "Please Enter Your Password Again";
                      }
                      return null;
                    },
                    controller: confirmpasswordcontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Confirm Password"),
                  ),
                ),
                SizedBox(height: 10,),
                
                Container(
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    controller: phonenumcontroller ,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                        
                          color: Colors.green,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: GestureDetector(
                      onTap: () {
                        if(_formkey.currentState!.validate()){
                          setState(() {
                            name= namecontroller.text;
                            email = maincontroller.text;
                            password =passwordcontroller.text;
                            phonenum= phonenumcontroller.text;

                          });
                        }
                      },
                      child: Center(
                          child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?  ",
                      style: AppWidget.lightTextFeildStyle(),
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn(),))
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.green,),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

