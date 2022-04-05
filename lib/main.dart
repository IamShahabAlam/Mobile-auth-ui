import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.yellow,),
      debugShowCheckedModeBanner: false,
      home: Home(),
      
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[600],
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            
            Center(child: Container(height: 100, width: 100, 
            padding: EdgeInsets.only(top:5), margin: EdgeInsets.only(top: 90),
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white,),
              child: Icon(Icons.favorite,size: 70, color: Colors.yellow[600],)),),

              SizedBox(height: 25,),
              
              Text("Mobile Number",style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),),

              SizedBox(height: 10,),

              Center(child: Text("We need to send OTP so authentication your number", style: TextStyle(color: Colors.black,fontSize: 14),)),

              SizedBox(height: 20,),

              Expanded(
                child: Align( alignment: Alignment.bottomCenter,
                  child: Container( height: MediaQuery.of(context).size.height*0.5 ,
                  width: MediaQuery.of(context).size.width, //alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(120),)),
                    child: 
                    Column( mainAxisAlignment: MainAxisAlignment.center, 
                      children: [
                        
                        InputTF(country: "(+92) Pakistan",icon: Icons.flag, inputType: TextInputType.text,),

                        InputTF(country: "Mobile Number", icon: Icons.contacts,inputType: TextInputType.number,),

                        Container( width: MediaQuery.of(context).size.width*0.45,
                                    padding: EdgeInsets.only(top:20 ),
                          child: ElevatedButton( style: ElevatedButton.styleFrom(
                            primary: Colors.yellow,
                            shape: StadiumBorder(),
                          ),
                            onPressed: (){ print("User has submitted his Region and Contact.");  }, 
                            child: Text("SEND",style: TextStyle(color: Colors.black),)),
                        )

                      ],) ,
                    ),
                ),
              ),


        ],
      ) ,);
  }
}


// =============================================

//            TEXTFIELD

class InputTF extends StatelessWidget {

  InputTF({this.country,this.inputType,this.icon});

  final String country ;
  final TextInputType inputType; 
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.1, 
      width: MediaQuery.of(context).size.width*0.8,
      padding: EdgeInsets.only(top: 20),
  // Changing Focused TF color.                       
    child: 
    Theme( data: Theme.of(context).copyWith(primaryColor: Colors.yellow[700]),
      child: TextField(
        keyboardType: inputType ,
        keyboardAppearance: Brightness.light,
        decoration: InputDecoration(
        focusColor: Colors.yellow[600],

        hintText: country ,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 10),
          child: Icon(icon),
        ) ,

        // labelText: "Region",
        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.grey[400],width: 2)),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.yellow[600],width: 3)),
      )  ,),
    ));
  }
}

