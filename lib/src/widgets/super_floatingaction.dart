import 'package:examendos/src/providers/heroesinfo.dart';
import 'package:examendos/src/providers/villanosinfo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//Referencias para tener acceso a la información que hay en cada clase
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: Icon(Icons.ac_unit),
          backgroundColor: Colors.deepPurple,
          onPressed: () {
//Cuando se haga acción en el botón se cambiará el texto que está especificado en HeroesInfo
//recibe la notificación del notifyListeners
            heroesInfo.heroe = 'Black Widow';
            villanosInfo.villano = 'Taskmaster';
          },
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          child: Icon(Icons.air_sharp),
          backgroundColor: Colors.pinkAccent,
          onPressed: () {
            heroesInfo.heroe = 'Spiderman';
            villanosInfo.villano = 'Misterio';
          },
        ),
      ],
    );
  }
}
