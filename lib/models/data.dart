

import 'package:challenge1/models/shoes.dart';
import 'package:challenge1/utils/constants.dart';


final listCategory = ['Agua','Fuego','Planta'];

final listPokes = [
  Pokes(
    'Bulbasaur',
    'Venusaur',
    'Clorofila',
    'GEN KANTO',
    4,
    [
      ImagePokes('assets/bul.png', AppConstantsColor.materialButtonColor),
      ImagePokes('assets/Ivys.png', AppConstantsColor.materialButtonColor),
      ImagePokes('assets/vena.png', AppConstantsColor.materialButtonColor),
      ImagePokes('assets/megav.png', AppConstantsColor.materialButtonColor)

    ],
  ),
    Pokes(
    'Squirtle',
    'Blastoise',
    'Nado Rapido',
    'GEN KANTO',
    3,
    [
      ImagePokes('assets/squ.png', AppConstantsColor.materialButtonColor),
      ImagePokes('assets/wart.png', AppConstantsColor.materialButtonColor),
      ImagePokes('assets/Blas.png', AppConstantsColor.materialButtonColor),
      ImagePokes('assets/MegaBlas.png', AppConstantsColor.materialButtonColor),

    ],
  ),
    Pokes(
    'Charmander',
    'Charizard',
    'Absorbe fuego',
    'GEN KANTO',
    5,
    [
      ImagePokes('assets/char.png', AppConstantsColor.materialButtonColor),
      ImagePokes('assets/leon.png', AppConstantsColor.materialButtonColor),
      ImagePokes('assets/charizard.png', AppConstantsColor.materialButtonColor),
      ImagePokes('assets/MegaCharizard.png', AppConstantsColor.materialButtonColor),

    ],
  ),

];