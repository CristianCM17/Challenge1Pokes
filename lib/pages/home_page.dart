import 'package:challenge1/models/data.dart';
import 'package:challenge1/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //utiliza para controlar un PageView. Permite controlar el desplazamiento del PageView
  final _pageController = PageController(
    viewportFraction: 0.75 //0.75 significa que cada página ocupará el 75% del ancho visible del PageView
    );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              children: List.generate(
                  listCategory.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: Text(
                          listCategory[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                  )),
            ),
          ),
          Expanded( //Este widget se utiliza para expandir su hijo para que ocupe todo el espacio
            child: PageView.builder(
              physics: const BouncingScrollPhysics(), //rebota al centro 
              itemCount: listPokes.length, //cantidad de paginas que va haber
              controller: _pageController,
              itemBuilder: (context,index){ //para construir cada pagina del carrusel por asi decirlo 
                final pokes= listPokes[index]; //agarra el index del carrusel
                final listTitle= pokes.generation.split(' ');
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0, vertical: 40 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,//los elementos secundarios se expandirán para ajustarse al ancho máximo (en una Column) o al alto máximo (en una Row) 
                      children: [
                        Text(
                          pokes.generation,
                          style: 
                          const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                            ),
                            ),
                        const SizedBox(height: 8),
                        Text(
                          pokes.name,
                          style: const TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w800
                          ),
                        ),
                        Text(
                          pokes.hability,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height: 4),
                        FittedBox(
                          child: Text(
                            '${listTitle[0]} \n ${listTitle[1]}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                        )
                      ],
                    ),
                  ),
                );
              })
              )
        ],
      ),
    );
  }
}
