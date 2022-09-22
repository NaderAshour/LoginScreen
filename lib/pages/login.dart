
import 'package:flutter/material.dart';
import 'package:login_screen_ieee/pages/signup.dart';
class loginscreen extends StatefulWidget {
  const loginscreen({Key? key}) : super(key: key);
  static final route='/log';

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor:  Color(0xff71afd2),
         elevation: 0,
        leading: Icon(Icons.line_weight_sharp,color: Colors.white,size: 35,),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            child:
            Column(
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
                SizedBox(height:35,),
                Text('Login',style: TextStyle(color:  Color(0xff38eaba),
                    fontSize:45,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(12.0),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                  TextButton(

                    onPressed: (){},
                    child: Text('Forget Password ?',style:TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Color(0xff38eaba),
                    ),),
                  ),

                  SizedBox(
                    height: 50,
                    width: 100,
                    child: ElevatedButton(
                      style:  ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xff38eaba)),
                      ),
                    onPressed: () {  },
                    child: Text('Login',style: TextStyle(color:  Colors.white,
                    ),
                    ),
                    ),
                  ),
            ]
    ),
                SizedBox(height: 15),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xff38eaba),
                  ),
                  child: Container(
                    child: TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, signupscreen.route);
                      },
                      child: Text('Sign UP',style: TextStyle(color: Colors.white,fontSize: 22),),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
