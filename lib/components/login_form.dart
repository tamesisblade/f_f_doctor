import 'package:f_front_ecommerce/components/button.dart';
import 'package:f_front_ecommerce/utils/Configuracion.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  bool obsecurePass = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key:_formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Configuracion.primaryColor,
              decoration: const InputDecoration(
                hintText: 'Email',
                labelText: 'Email',
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.email_outlined),
                prefixIconColor: Configuracion.primaryColor
              ),
            ),
            Configuracion.spaceSmall,
            TextFormField(
              controller: _passController,
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Configuracion.primaryColor,
              obscureText: obsecurePass,
              decoration:  InputDecoration(
                  hintText: 'Password',
                  labelText: 'Password',
                  alignLabelWithHint: true,
                  prefixIcon: const Icon(Icons.lock_outline),
                  prefixIconColor: Configuracion.primaryColor,
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      obsecurePass = !obsecurePass;
                    });
                  },
                      icon: obsecurePass ? const Icon(Icons.visibility_off_outlined,color: Colors.black38,)
                          : const Icon(Icons.visibility_off_outlined,color: Configuracion.primaryColor))
              ),
            ),
            Configuracion.spaceSmall,
            //boton login
           Button(
               width: double.infinity,
               title: 'Ingresar',
               onPressed: (){
                 //intentar ingresar
                 Navigator.of(context).pushNamed('main');
               },
               disable: false
           )
        ],
      ),
    );
  }
}
