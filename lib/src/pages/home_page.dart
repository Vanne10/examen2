import 'package:examendos/src/providers/heroesinfo.dart';
import 'package:examendos/src/widgets/super_floatingaction.dart';
import 'package:examendos/src/widgets/super_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//Para tener acceso a la información dentro de la clase HeroesInfo se necesita una variable final
//heroesInfo tiene que ser tipo HeroesInfo, y esto se logra con el <HeoresInfo>
    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
//manda llamar la información que contiene la propiedad heroe
        title: Text(heroesInfo.heroe),
      ),
//Manda a llamar el texto desde la pagina super_text.dart donde está el widget
      body: Center(child: SuperText()),
//Manda a llamar a los botones del widget en la pagina super_floatingaction.dart
      floatingActionButton: SuperFloatingAction(),
    );
  }
}
