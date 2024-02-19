

import 'package:challenge1/models/shoes.dart';
import 'package:challenge1/utils/constants.dart';
import 'package:flutter/material.dart';


final listCategory = ['Planta','Agua','Fuego'];

final listPokes = [
  Pokes(
    'Bulbasaur',
    'Venusaur',
    'Clorofila',
    'GEN KANTO',
    4,
    [
      ImagePokes('assets/bul.png', AppConstantsColor.bulbasaur, 'Bulbasaur'),
      ImagePokes('assets/Ivys.png', AppConstantsColor.bulbasaur,'Ivysaur'),
      ImagePokes('assets/vena.png', AppConstantsColor.bulbasaur,'Venasaur'),
      ImagePokes('assets/megav.png', AppConstantsColor.bulbasaur,'Mega Venasaur')

    ],
  ),
    Pokes(
    'Squirtle',
    'Blastoise',
    'Nado Rapido',
    'GEN KANTO',
    3,
    [
      ImagePokes('assets/squ.png', AppConstantsColor.squirtle,'Squirtle'),
      ImagePokes('assets/wart.png', AppConstantsColor.squirtle,'Wartortle'),
      ImagePokes('assets/Blas.png', AppConstantsColor.squirtle,'Blastoise'),
      ImagePokes('assets/MegaBlas.png', AppConstantsColor.squirtle, 'Mega Blastoise'),

    ],
  ),
    Pokes(
    'Charmander',
    'Charizard',
    'Absorbe fuego',
    'GEN KANTO',
    5,
    [
      ImagePokes('assets/char.png', AppConstantsColor.charmander, 'Charmander'),
      ImagePokes('assets/leon.png', AppConstantsColor.charmander, 'Charmaleon'),
      ImagePokes('assets/charizard.png', AppConstantsColor.charmander, 'Charizard'),
      ImagePokes('assets/megaCharizard.png', AppConstantsColor.megaCharizard,'Mega Charizard X'),

    ],
  ),

];