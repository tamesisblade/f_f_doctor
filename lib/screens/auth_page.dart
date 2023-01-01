import 'package:f_front_ecommerce/components/login_form.dart';
import 'package:f_front_ecommerce/components/social_button.dart';
import 'package:f_front_ecommerce/utils/Configuracion.dart';
import 'package:f_front_ecommerce/utils/text.dart';
import 'package:flutter/material.dart';
class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    Configuracion().init(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15) ,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppText.enText['welcome_text']!,
                style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),

              ),
              Configuracion.spaceSmall,
              Text(AppText.enText['SignIn_text']!,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Configuracion.spaceSmall,
              //Login componentes
              const LoginForm(),
              Configuracion.spaceSmall,
              Center(
                child: TextButton(
                  onPressed: (){

                  },
                  child:Text(AppText.enText['forgot-password']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color:Colors.black
                    ),
                  ),
                ),
              ),
              //botones de redes sociales
              const Spacer(),
              Center(
                child:  Text(AppText.enText['social-login']!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade500
                  ),
                ),
              ),
              Configuracion.spaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    SocialButton(social: 'google'),
                    SocialButton(social: 'facebook',)
                ],
              ),
              Configuracion.spaceSmall,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppText.enText['signUp_text']!,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade500
                    ),
                  ),
                 const  Text(' Registrate',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),
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
