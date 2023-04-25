import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:newpro/modules/bmi_app/bmi_calculator.dart';
import 'package:newpro/shared/components/components.dart';
class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
 // const LoginScreen({Key? key}) : super(key: key);
   var emailController = TextEditingController();

   var passwordController = TextEditingController();
   bool passToggle = true;
   bool isPassword = true;

   var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF101322),
      body: Form(
        key: formkey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              const Icon(Icons.account_circle_sharp,
                color: Color(0xFFe8134a),
                size: 78.0,
              ),
              // welcome
              const Text(
                'Hello There',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                ),
              ),
              //sixedbox between the text and the slogan
              const SizedBox(
                height: 10,
              ),
              const  Text(
                'Let\'s keep up with the golden league',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 20,
                ),
              ),
              //Email
              //sizedbox between the slogan and the text filed ( Email)
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child:  Padding(
                    padding: const  EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: TextFormField(
                      controller: emailController,
                      onFieldSubmitted: ( String value ){
                        print(value);
                      },
                      onChanged: (String value ){
                        print(value);
                      },
                      keyboardType: TextInputType.emailAddress,
                      validator: (value)
                      // => value!.isEmpty ? 'Email address must not be empty' : null ,
                        {
                          if(value == null || value.isEmpty || !RegExp(r'^[a-z A-Z]+ $').hasMatch(value))
                        {
                          return 'Email address must not be empty';} else {
                          return null;
                          }
                     },
                      decoration: const  InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: const Color(0xFFe8134a),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //password
              //sizedbox between the text filed ( Email) and the text filed ( Password)
              const SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border.all(color: Colors.white.withOpacity(0.9),),
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      onFieldSubmitted: ( String ? value ){
                        print(value);
                      },
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                     validator: (value) => value!.isEmpty ? 'Password must not be empty' : null ,
                      onChanged: (String value){
                     setState(() {
                      //password= value;
                     });
                      },
                            //  {
                           // if(value.isEmpty){
                          //    return 'Password must not be empty';
                         // }
                        // return null;
                       // },
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color:  Color(0xFFe8134a),
                        ),
                        suffix: InkWell(
                        //   onTap: (){
                        //     setState(() {
                        //         isPassword = ! isPassword;
                        //     });
                        //   },
                        // ),

                          // child: Icon(
                          //   Icons.remove_red_eye,
                          //   color:  Color(0xFFe8134a),

                          ),
                        ),
                      ),
                    ),
                  ),
              ),
                 ],
                ),
              ),
              //Sign in label
              //sing in label is just a text now
                    SizedBox(height: 15.0,),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                ),
                child: defaultButton(
                  width: double.infinity,
                  radius: 13.0,
                  function: (){
                    if(formkey.currentState!.validate()) {
                      // print(emailController.text);
                      // print(passwordController.text);
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(builder: (context) => BMICalcScreen(
                      //
                      //       ),),);
                      // }
                      // return;
                    };
                  },
                  text: ' Sign In',
                  background: Color(0xFFe8134a),
                ),
              ),
              //Not a memeber? Register now!
              //sizedbox between the form and the last sentence
              const SizedBox(
                height: 13.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    ' Not a member? ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: onPressed,
                    child: Text(
                      ' Register Now.',
                      style: TextStyle(
                        color:  Color(0xFFe8134a),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              //End of form

      ),

          );

      //   ),
      //
      // ),
   // );

  }
}
void onPressed(){
  // print('Pressed');
  print('hello');

}