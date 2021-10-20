import 'package:flutter/material.dart';

//propiedades con las que trabajará la aplicación con provider
//ChangeNotifer notifica los cambios de las propiedades a todos los widgets
class HeroesInfo with ChangeNotifier {
  String _heroe = 'Spiderman';
  Color colorBase = Colors.blue;
//get y set porque la propiedad es privada
  String get heroe {
    return _heroe;
  }

//se coloca la información que tendrá cada propiedad
  set heroe(String nombre) {
//Cuando se implementa el provider es necesario comunicar a todos los demas widgets
//los cambios generados en las propiedades
    this._heroe = nombre;
//colorBase es igual a que si lo que hay dentro de nombre es igual a Blac Widow cambie a rojo si no que se a azul
    this.colorBase = (nombre == 'Black Widow') ? Colors.red : Colors.blue;
//Cuando se asigne un valor a _heroe este comando notificará a todos los widgets sobre el cambio
    notifyListeners();
  }
}
