

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
      ImagePokes('assets/bul.png', AppConstantsColor.bulbasaur),
      ImagePokes('assets/Ivys.png', AppConstantsColor.bulbasaur),
      ImagePokes('assets/vena.png', AppConstantsColor.bulbasaur),
      ImagePokes('assets/megav.png', AppConstantsColor.bulbasaur)

    ],
  ),
    Pokes(
    'Squirtle',
    'Blastoise',
    'Nado Rapido',
    'GEN KANTO',
    3,
    [
      ImagePokes('assets/squ.png', AppConstantsColor.squirtle),
      ImagePokes('assets/wart.png', AppConstantsColor.squirtle),
      ImagePokes('assets/Blas.png', AppConstantsColor.squirtle),
      ImagePokes('assets/MegaBlas.png', AppConstantsColor.squirtle),

    ],
  ),
    Pokes(
    'Charmander',
    'Charizard',
    'Absorbe fuego',
    'GEN KANTO',
    5,
    [
      ImagePokes('assets/char.png', AppConstantsColor.charmander),
      ImagePokes('assets/leon.png', AppConstantsColor.charmander),
      ImagePokes('assets/charizard.png', AppConstantsColor.charmander),
      ImagePokes('assets/MegaCharizard.png', AppConstantsColor.charmander),

    ],
  ),

];