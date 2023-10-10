import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:libary/SC.dart';
import 'package:libary/TS.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: fc(),
     // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class fc extends StatefulWidget {
  const fc({super.key});

  @override
  State<fc> createState() => _fcState();
}

class _fcState extends State<fc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor: Colors.blueGrey,
      body:Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10,left: 10,right: 10),child: SizedBox(height: 500,width: 400,
            child:Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(300)),
            child: Image(image: AssetImage('images/phone.png'),fit: BoxFit.fill,),) ,),),
          Padding(padding: EdgeInsets.only(top: 10,left: 20,right: 20,),child: Text("The future of reading is here, \n     and it fits in your pocket",
            style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white) ,),),
          Padding(padding: EdgeInsets.only(top: 10),child:SizedBox(height: 50,width: 300,child: Card(
            color: Colors.blueAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TS()));},child:Padding(padding: EdgeInsets.only(top: 10,left: 110),
              child: Text('Login',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),)
            ),
          ),),),
          Padding(padding: EdgeInsets.only(top: 10),child:SizedBox(height: 50,width: 300,child: Card(
            color: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: InkWell(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SC()));},child:Padding(padding: EdgeInsets.only(top: 10,left: 100),
              child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),)
            ),
          ),),)

        ],
    )
    );
  }
}




