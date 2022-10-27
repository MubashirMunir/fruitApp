
import 'package:flutter/material.dart';
import 'package:fruitApp/pages/productPage.dart';
import 'package:fruitApp/pages/pwnkmar.dart';
class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}
bool isClick=false;
class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(),
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Container(
          height: 300,
          child: Image.asset("assets/images/fruitss.jpg"),
        ),
        Text("WELCOME",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),),
        const SizedBox(height: 20,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Username',
                hintText: "Enter Name"
              )
          ),
        ),
        Padding(padding:EdgeInsets.all(10),
            child: TextField(keyboardType: TextInputType.number,
              decoration: InputDecoration(border: OutlineInputBorder(),
                labelText: "Enter Password",
                hintText: "Enter Password"
              ),
            )),
        SizedBox(height: 20,),
        InkWell(
          onTap: () async {
            setState(() {
              isClick=true;
            });
          await Future.delayed(Duration(seconds: 1));
           await Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=> ItemWidget() ));
           setState(() {
             isClick=false;
           });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            alignment: Alignment.center,
            width: isClick?50:150,
            height: 50,
            child:isClick? Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
            decoration: BoxDecoration(
                color: Colors.green,borderRadius: BorderRadius.circular(isClick ?30:8))),),
                 SizedBox(height: 30,),
                  const Text('Or Sign Up with'),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    SizedBox(
                      height: 25,
                      child:  Image.asset("assets/images/facebook.png",),
                    ),
                    SizedBox(width: 10,),
                    SizedBox(
                      height: 25,
                      child:  Image.asset("assets/images/instagram.jpg",),
                    ),
                    SizedBox(
                    width: 10,),
                    SizedBox(
                      height: 25,
                      child:  Image.asset("assets/images/gmail.png",),
                    )
                  ],
                )
        ],
    ),
    ),
    )
    );
  }
}
