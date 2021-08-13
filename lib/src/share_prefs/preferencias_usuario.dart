import 'package:shared_preferences/shared_preferences.dart';


class PreferenciasUsuario {

  static final PreferenciasUsuario _instacia = new PreferenciasUsuario._internal();


  factory PreferenciasUsuario() {
    return _instacia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    _prefs =  await SharedPreferences.getInstance();
  }


  // GET y SET del Genero

  get  genero {
    return _prefs.getInt('genero') ?? 1;
  }

  set genero (int value) {
    _prefs.setInt('genero', value);
  }

  // GET y SET del Color secundario

  get  colorSecundario {
    return _prefs.getBool('colorSecundario') ?? false;
  }

  set colorSecundario (bool value) {
    _prefs.setBool('colorSecundario', value);
  }

  // GET y SET del Color secundario

  get  nombreUsuario {
    return _prefs.getString('nombreUsuario') ?? '';
  }

  set nombreUsuario (String value) {
    _prefs.setString('nombreUsuario', value);
  }


 // GET y SET del Color secundario

  get  ultimaPagiba {
    return _prefs.getString('ultimaPagiba') ?? 'home';
  }

  set ultimaPagiba (String value) {
    _prefs.setString('ultimaPagiba', value);
  }






}