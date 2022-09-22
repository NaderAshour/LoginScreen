

import 'login.dart';
import 'package:flutter/material.dart';
class signupscreen extends StatefulWidget {
  const signupscreen({Key? key}) : super(key: key);
  static final route='/sign';
  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xff71afd2),
        elevation: 0,
        leading: Icon(Icons.line_weight_sharp,color: Colors.white,size: 35,),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SafeArea(
            child: Expanded(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin:Alignment.topCenter,
                        end: Alignment.bottomCenter,

                        colors:const [
                          Color(0xff71afd2),
                          Color(0xff6bb5d0),
                          Color(0xff5dc3ca),

                          Color(0xff4fd2c4),
                          Color(0xff45dcc0),
                          Color(0xff38eaba),

                        ] ,

                      ),
                    ),
                  ),
                   SizedBox(height:10,),
                  Text('Sign UP',style: TextStyle(color:  Color(0xff38eaba),
                      fontSize:45,fontWeight: FontWeight.bold),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 12),
                    child: Container(
                      height: 70,
                      child:TextFormField(
                        decoration: InputDecoration(

                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                          hintText:'Gmail',
                          hintStyle: TextStyle(
                              fontSize: 20.0, color: Colors.grey),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow:  [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.09),
                            blurRadius: 2,
                            offset: Offset(-2,5),
                          ),
                        ],

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 70,
                      child:TextFormField(

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                          hintText:'Password',
                          hintStyle: TextStyle(
                              fontSize: 20.0, color: Colors.grey),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow:  [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.09),
                            blurRadius: 2,
                            offset: Offset(-2,5),
                          ),
                        ],

                      ),
                    ),
                  ) ,
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 70,
                      child:TextFormField(

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 10.0),
                          hintText:'Confirm Paassword',
                          hintStyle: TextStyle(
                              fontSize: 20.0, color: Colors.grey),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow:  [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.09),
                            blurRadius: 2,
                            offset: Offset(-2,5),
                          ),
                        ],

                      ),
                    ),
                  ) ,
                  Padding(
                    padding: const EdgeInsets.only(right:12.0),
                    child: Container(
                      alignment: Alignment.centerRight,
                         child: SizedBox(
                            height: 50,
                            width: 100,
                            child: ElevatedButton(
                              style:  ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Color(0xff38eaba)),
                              ),
                              onPressed: () {  },
                              child: Text('Sign Up',style: TextStyle(color:  Colors.white,
                              ),
                              ),
                            ),
                          ),

                    ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: Container(
                     
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Color(0xff38eaba),
                      ),
                      child: TextButton(
                        onPressed: (){
                          Navigator.popAndPushNamed(context, loginscreen.route);
                        },
                        child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 22),),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
