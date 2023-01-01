import 'package:f_front_ecommerce/utils/Configuracion.dart';
import 'package:flutter/material.dart';
class SocialButton extends StatelessWidget {
  const SocialButton({Key? key, required this.social}) : super(key: key);
  final String social;
  @override
  Widget build(BuildContext context) {
    Configuracion().init(context);
    return OutlinedButton(
      style:OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 15),
        side: const BorderSide(width: 1,color:Colors.black)
      ),
        onPressed: (){},
        child: SizedBox(
          width: Configuracion.widthSize * 0.4,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/$social.png',width: 40 ,height: 40,),
              Text(
                social.toLowerCase(),
                style: const TextStyle(
                  color: Colors.black,
                ),
              )
            ],
          ) ,
        )
    );
  }
}
