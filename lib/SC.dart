
import 'package:flutter/material.dart';
import 'package:libary/MyPage.dart';

class SC extends StatelessWidget {
const SC({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
home: MyForms(),
debugShowCheckedModeBanner: false,
);
}
}
class MyForms extends StatefulWidget {
const MyForms({super.key});

@override
State<MyForms> createState() => _MyFormsState();
}

class _MyFormsState extends State<MyForms> {

  final Rollnumber=TextEditingController();
final emailAddress=TextEditingController();
final password=TextEditingController();
String err="";
//final err=TextEditingController();
final _formKey=GlobalKey<FormState>();
@override
Widget build(BuildContext context) {
return Scaffold(
body: SingleChildScrollView(
scrollDirection: Axis.vertical,
child: Form(
key: _formKey,
child: Column(
children: [
SizedBox(
height: 20,
),
Text("Hi! \nCreate a new  account ",style: TextStyle(fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold),),
SizedBox(height: 10,),

SizedBox(height: 10,),
  Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
    child: TextField(
      style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold
      ),
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Enter your Roll number",
          prefixIcon: Icon(Icons.person,size: 30,),
          prefixIconColor: Colors.blue,
          helperText: "Roll number"
      ),
      cursorColor: Colors.blue,
      cursorHeight: 40,
      cursorWidth: 5,
      cursorRadius: Radius.circular(30),
      textAlign: TextAlign.left,
      //keyboardType: TextInputType.Roll number,
      textCapitalization: TextCapitalization.characters,
// obscureText: true,
// obscuringCharacter: "*",
      keyboardAppearance: Brightness.dark,
      showCursor: true,
//maxLines: 3,
      onChanged: (val){
        print(val);
      },
      controller: Rollnumber,
    ),
  ),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
child: TextField(
style: TextStyle(
fontSize: 20,
color: Colors.black,
fontWeight: FontWeight.bold
),
decoration: InputDecoration(
border: OutlineInputBorder(),
labelText: "Enter your email ",
prefixIcon: Icon(Icons.email,size: 30,),
prefixIconColor: Colors.blue,
helperText: "email"
),
cursorColor: Colors.blue,
cursorHeight: 40,
cursorWidth: 5,
cursorRadius: Radius.circular(30),
textAlign: TextAlign.left,
keyboardType: TextInputType.emailAddress,
textCapitalization: TextCapitalization.characters,
// obscureText: true,
// obscuringCharacter: "*",
keyboardAppearance: Brightness.dark,
showCursor: true,
//maxLines: 3,
onChanged: (val){
print(val);
},
controller: emailAddress,
),
),

Padding(
padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
child: TextFormField(
style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.pink),
//cursorWidth: 5,
cursorRadius: Radius.circular(30),
cursorHeight: 20,
textAlign: TextAlign.left,
keyboardType: TextInputType.number,
showCursor: true,
obscureText: true,
obscuringCharacter: "*",
decoration: InputDecoration(
border: OutlineInputBorder(),
labelText: "Enter your password",
helperText: "Password",
suffixIcon: Icon(Icons.remove_red_eye),
suffixIconColor: Colors.blue,
),
controller: password,
validator: (val)=>val!.isEmpty?"Enter email address":null,
),
),
Text("Note: Enter all fields"),
SizedBox(
height: 20,
),
err.length==0?SizedBox(height: 20,):Text("$err",style: TextStyle(color: Colors.red),),
ElevatedButton(onPressed: (){
if(emailAddress.text.isEmpty || password.text.isEmpty)
{
setState(() {
err="enter all the fields";
});
}
else{
Navigator.push(context, MaterialPageRoute(builder: (context)=>MyPage()));
}
},child:Text("Submit"),)
],
),
),
),
);
}
}
