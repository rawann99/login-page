import 'package:flutter/material.dart';

class  loginScreen extends StatelessWidget {
   var emailcontroller=TextEditingController();
   var passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),

        child: Center(
          child: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start ,
              children: [

              Text("Login",style: TextStyle(fontSize: 40.0,
                fontWeight: FontWeight.bold,
              )
                ,),
              SizedBox(height: 10.0,),
              TextFormField(
                onFieldSubmitted: (String value){
                  print(value);
                },
                controller: emailcontroller,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                   labelText: "Email Address ",
                border:OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),



              )
                ,),
    SizedBox(height: 10.0,),

    TextFormField(
      onFieldSubmitted: (String value){
            print(value);
      },
      controller: passwordcontroller,
    keyboardType: TextInputType.visiblePassword,
    obscureText: true,
    decoration: InputDecoration(
    labelText: "Password",
    border:OutlineInputBorder(),
    prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.remove_red_eye_outlined),


    )
    ),
                SizedBox(height: 10.0,),
                Container(
                  width: double.infinity,
                  color: Colors.blueAccent,
                  child: MaterialButton(
                    onPressed: (){
                      print(emailcontroller.text);
                      print(passwordcontroller.text);


                    },
                    child:
                    Text("LOGIN",style: TextStyle(color: Colors.white),)
                    ,
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account")
                    ,
                    TextButton(onPressed: (){}
                    ,
                      child:Text("Register NOW",),

                    )

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
