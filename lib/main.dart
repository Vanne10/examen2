import 'package:examendos/src/pages/home_page.dart';
import 'package:examendos/src/providers/heroesinfo.dart';
import 'package:examendos/src/providers/villanosinfo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
//Material App al ser el widget principal es el lugar ideal para colocar el provider
  /* @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HeroesInfo>(
//ChangeNotifierProvider necesita de la siguiente instrucción para inicializar el estado
//de la información de la aplicación, crea una nueva instancia de HeroesInfo en provider
//así cada uno de los hijos (cada widget creado) van a tener acceso a la información y cambios del HeroesInfo
      create: (_) => HeroesInfo(),
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (context) => HomePage()},
      ),
    );*/
  @override
  Widget build(BuildContext context) {
//MultiProvaider es cuando hay varios contenedores de información, mantiene diferentes instancias del provider
    return MultiProvider(
//recibe providers que es un arreglo o una lista de todos los ChangeNotifierProvider necesarios
      providers: [
        ChangeNotifierProvider(
          create: (_) => HeroesInfo(),
        ),
        ChangeNotifierProvider(
          create: (_) => VillanosInfo(),
        ),
      ],
      child: MaterialApp(
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (context) => HomePage()},
      ),
    );
  }
}
