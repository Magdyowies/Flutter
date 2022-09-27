import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var emailController =TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar:AppBar(

      ) ,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,


              children: [
                Text('Login',style: TextStyle(
                    fontSize: 40.0,
                  fontWeight: FontWeight.bold,

                ),),
                SizedBox(
                  height: 40.0,
                ),
                //Email Address

                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email Adrees ',

                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),

                  ),
                //passWord
                SizedBox(
                  height: 15.0,
                ),

                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'Password ',
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    border: OutlineInputBorder(),
                  ),

                ),
                SizedBox(height: 10.0),
                Container(
                  color: Colors.blue,
                   width: double.infinity,
                  child: MaterialButton(onPressed: (){
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child : Text(
                      'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
      ),
                )
                ,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        'Dont\'t have an account?'),
                    TextButton(onPressed: (){}, child: Text(
                      'Register Now',
                    ))

                  ],
                ),





              ],

            ),
          ),
        ),
      ),
    );
  }
}
