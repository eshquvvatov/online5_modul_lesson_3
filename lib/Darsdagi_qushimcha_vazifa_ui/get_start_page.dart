import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'login_page.dart';

class GetStartPage extends StatefulWidget {
  const GetStartPage({Key? key}) : super(key: key);
  static const String id = "/get_start_page";

  @override
  _GetStartPageState createState() => _GetStartPageState();
}

class _GetStartPageState extends State<GetStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            color: Colors.orange.shade800,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                const Text(
                  "Your Logo",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )
              ],
            ),
          ),
         Container(
           //width: MediaQuery.of(context).size.width,
           alignment: Alignment.bottomCenter,
           height: MediaQuery.of(context).size.height*0.75,
             decoration: const BoxDecoration( color: Colors.white,
               borderRadius: BorderRadius.only(topRight:Radius.circular(20),topLeft:Radius.circular(20))
             ),
             child: Padding(
               padding: const EdgeInsets.only(left: 20,right: 20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                   const Text("Create an account",
                     style: TextStyle(fontSize: 25,
                         color: Colors.black,fontWeight: FontWeight.bold),),
                   SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                   const Text("Sign up continue",style: TextStyle(fontSize: 18,color: Colors.grey),),
                   SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                   const Text("NAME",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                   SizedBox(height:MediaQuery.of(context).size.height*0.01  ,),
                   const TextField(

                     style: TextStyle(fontSize: 15,color: Colors.black),
                     decoration: InputDecoration(hintText: "Dawign Wong",
                       border: OutlineInputBorder(),
                     ),
                   ),

                   SizedBox(height:MediaQuery.of(context).size.height*0.01  ,),
                   const Text("Email",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                   SizedBox(height:MediaQuery.of(context).size.height*0.01  ,),
                   const TextField(

                     style: TextStyle(fontSize: 15,color: Colors.black),
                     decoration: InputDecoration(hintText: "ravshanbek@gmail.com",
                       border: OutlineInputBorder(),
                     ),
                   ),

                   SizedBox(height:MediaQuery.of(context).size.height*0.01  ,),
                   const Text("Password",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                   SizedBox(height:MediaQuery.of(context).size.height*0.01  ,),
                   SizedBox(height:MediaQuery.of(context).size.height*0.09 ,
                   child:  const TextField(

                     style: TextStyle(fontSize: 15,color: Colors.black),
                     decoration: InputDecoration(
                         contentPadding: EdgeInsets.symmetric(horizontal: 15),
                         suffixIcon:Icon(Icons.visibility_off),
                         hintText: "********",
                         hintStyle: TextStyle(fontSize: 20),
                         border: OutlineInputBorder(
                         )
                     ),
                   ),
                   ),

                   SizedBox(height:MediaQuery.of(context).size.height*0.02  ,),
                   ElevatedButton(
                       onPressed: () {
                         setState(() {

                         });
                       },
                       style: ElevatedButton.styleFrom(
                           primary: Colors.green.shade800,
                           shape: RoundedRectangleBorder(
                               borderRadius:
                               BorderRadius.circular(15))),
                       child: Container(
                         height: MediaQuery.of(context).size.height*0.07,
                         alignment: Alignment.center,
                         child: const Text("Get Started"),
                         padding: const EdgeInsets.only(
                             left: 15, right: 15),
                       )),
                   SizedBox(height:MediaQuery.of(context).size.height*0.02  ,),
                   Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Already have an account?",
                         style: TextStyle(fontSize: 18,color: Colors.grey),),
                       SizedBox(width: 10,),
                       GestureDetector(
                         child: Text("Login",style: TextStyle(fontSize: 20),),
                         onTap:(){
                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>SignInPage()));
                         },
                       )
                     ],
                   )


                 ],
               ),
             )

         )
        ],
      ),
    );
  }
}
