import 'dart:developer';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/authentication/signup_controller.dart';
import 'package:flutter_application_1/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/authentication/authentication.dart';
  import 'package:google_sign_in/google_sign_in.dart';

class LoginScreer extends StatefulWidget {
  const LoginScreer({super.key});

  @override
  State<LoginScreer> createState() => _LoginScreerState();
}

class _LoginScreerState extends State<LoginScreer> {
  _handleGoogleButnClick(){
    _signInWithGoogle().then((user) {
      log('User: ${user.user}');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
    });
  }

Future<UserCredential> _signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
  @override
  Widget build(BuildContext context) {

   final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String fullname= '';
  bool login=false;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF36B8B8),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:16.0),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                
                children:[
                
                Text('Register',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.bold,fontSize: 25,color: Color(0xFF36B8B8)),),
                SizedBox(height: 20,),
                Text('Fill up your details to register',style: TextStyle(fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Color(0xFF36B8B8)),),
            
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Container(
                    width: 340,
                    child: Column(
                      children: [
                        TextFormField(
                        key: ValueKey('fullName'),
                        decoration: InputDecoration(
                          
                          labelText: 'Username',
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(top:11.0),
                            child: FaIcon(FontAwesomeIcons.solidUser,size: 20,),
                          ),
                          suffixIconColor: Colors.grey,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Color(0xFF36B8B8),
                            ),
                          ),
                            focusedBorder:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                            color: Color(0xFF36B8B8),
                            ),
                           ),
                           
                           hintText: 'Enter Username',
                           hintStyle: TextStyle(fontSize: 15)
                        ),
               
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: TextFormField(
                          key: ValueKey('email'),
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right:25.0),
                              child: Icon(Icons.email_outlined),
                            ),
                            //suffixIconColor: Colors.grey,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                              color: Color(0xFF36B8B8),
                              ),
                            ),
                              focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                              color: Color(0xFF36B8B8),
                              ),
                             ),
                              labelText: "Email",
                            hintText: 'Enter Email Address',
                             hintStyle: TextStyle(fontSize: 15),
                          
                          ),
                           
      
                          ),
                        ),
            
                        
                         Padding(
                          padding: const EdgeInsets.only(top: 18),
                          child: TextFormField(
                          key: ValueKey('password'),
                          decoration: InputDecoration(
                           
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right:25.0),
                              child: Icon(Icons.password),
                            ),
                            //suffixIconColor: Colors.grey,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                              color: Color(0xFF36B8B8),
                              ),
                            ),
                              focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                              color: Color(0xFF36B8B8),
                              ),
                             ),
                              labelText: "Password",
                            hintText: 'Enter Password',
                             hintStyle: TextStyle(fontSize: 15),
                          
                          ),
                          obscureText: true,
           
                          ),
                        ),                                      
                      ],
                    ),
                  ),
                ),
               
                Padding(
                  padding: const EdgeInsets.only(top:180.0),
                  child: InkWell(
                    
                    
                    child: Container(
                      height: 60,
                      width: 300,
                      child: Center(child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 17,fontFamily: 'Poppins'),)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Color(0xFF36B8B8),
                      ),
                    ),
                    onTap: () {
                      _handleGoogleButnClick();
                    }
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:16.0,left: 84),
                  child: Row(
                    children: [
                      Text('Already have an account?'),
                      Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen2()));
                        }, child: Text('Login')),
                      )
                    ],
                  ),
                )
                  
                 
                 
              ],
              
              ),
            ),
          ),
        ),
      )
    );
  }
}

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  final _formKey = GlobalKey<FormState>();
  String _phoneNumber = '';
  String _verificationCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Color(0xFF36B8B8),
      ),
      body: Form(
        key: _formKey,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top:60.0),
            child: Center(child: Text('Login',style: TextStyle(
              fontFamily: 'Poppins',fontSize: 35,fontWeight: FontWeight.w500,color: Color(0xFF36B8B8)
            ),)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Text('Enter your 10 digit mobile',style: TextStyle(
               fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Color(0xFF36B8B8)
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:5.0),
            child: Text('number to continue',style: TextStyle(
               fontFamily: 'Poppins',fontWeight: FontWeight.w200,color: Color(0xFF36B8B8)
            ),),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Padding(
                              padding: const EdgeInsets.only(right:25.0),
                              child: Icon(Icons.call),
                            ),
                            //suffixIconColor: Colors.grey,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                              color: Color(0xFF36B8B8),
                              ),
                            ),
                              focusedBorder:  OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(
                              color: Color(0xFF36B8B8),
                              ),
                             ),
                              labelText: "Phone No.",
                            hintText: 'Enter Phone No.',
                             hintStyle: TextStyle(fontSize: 15),
                          
                          ),
                          validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your phone number';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {
                _phoneNumber = value;
              });
            },
                          ),
          ),
          ElevatedButton(onPressed: (){
                       if (_formKey.currentState!.validate()) {
    }
                          }, 
                          child: Padding(
                            padding: const EdgeInsets.only(left:120.0,right: 120),
                            child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold),),
                          ),style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(18)),
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF36B8B8)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                              side: BorderSide(color: Color(0xFF36B8B8))
                            ))
                          ), ),
        ],),
      ),
    );
  }
}