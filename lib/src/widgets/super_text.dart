import 'package:examendos/src/providers/heroesinfo.dart';
import 'package:examendos/src/providers/villanosinfo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SuperText extends StatelessWidget {
  const SuperText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//Referencias para tener acceso a la información que hay en cada clase
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
//Cuando se haga acción en el botón se cambiará el texto que está especificado en HeroesInfo
//recibe la notificación del notifyListeners
          heroesInfo.heroe,
          style: TextStyle(fontSize: 30, color: heroesInfo.colorBase),
        ),
        Text(
          villanosInfo.villano,
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
