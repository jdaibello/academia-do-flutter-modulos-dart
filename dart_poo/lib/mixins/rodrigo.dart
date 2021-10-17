import 'package:dart_poo/mixins/artista.dart';
import 'package:dart_poo/mixins/cantar.dart';
import 'package:dart_poo/mixins/dancar.dart';

class Rodrigo extends Artista with Dancar, Cantar {}
