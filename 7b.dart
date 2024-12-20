
import 'package:flutter/material.dart';
void main() {
    runApp(MyApp());
}
class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title:'Login Form ',
            theme:ThemeData(
                primarySwatch:Colors.blue,
            ),
            home:LoginForm(),
        );
    }
}

class LoginForm extends StatefulWidget {
    @override
    _LoginFormState createState()=>_LoginFormState();
}

class _LoginFormState extends State<LoginForm>
{
    final _formKey=GlobalKey<FormState>();
    final _emailController=TextEditingController();
    final _passwordController=TextEditingController();
    @override
    void dispose() {
        _emailController.dispose();
        _passwordController.dispose();
        super.dispose();
    }
    void _login() {
        if(_formKey.currentState!.validate()) {
            String email=_emailController.text;
            String password=_passwordController.text;
            print('Email :$email');
            print('password:$password');
        }
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar:AppBar(
                title:Text('Login Form'),
            ),
            body:Padding(
                padding:const EdgeInsets.all(16.0),
                child:Form(
                    key:_formKey,
                    child:Column(
                        mainAxisAlignment:MainAxisAlignment.center,
                        children:[
                            TextFormField(
                                controller:_emailController,
                                keyboardType:TextInputType.emailAddress,
                                decoration:InputDecoration(
                                    labelText:'Email',
                                    border:OutlineInputBorder(),
                                ),
                                validator:(value) {
                                    if(value==null || value.isEmpty) {
                                        return 'Please enter your email';
                                    }
                                    return null;
                                },
                            ),
                            SizedBox(height:16.0),
                            TextFormField(
                                controller:_passwordController,
                                obscureText:true,
                                decoration:InputDecoration(
                                    lebelText:'Password',
                                    border:OutlineInputBorder(),
                                ),
                                validator:(value) {
                                    if(value==null || value.isEmpty) {
                                        return 'Please enter your password';
                                    }
                                    return null;
                                },
                            ),
                           SizedBox(height:16.0),
                           ElevatedButton(
                            onPressed:_login,
                            child:Text('Login'),
                           ),
                            
                        ],
                    ),
                ),
            ),
        );

    }

  }

  

