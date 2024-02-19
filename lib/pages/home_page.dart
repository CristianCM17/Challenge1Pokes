import 'package:challenge1/models/data.dart';
import 'package:challenge1/models/shoes.dart';
import 'package:challenge1/pages/details_shoes.dart';
import 'package:challenge1/utils/constants.dart';
import 'package:challenge1/widgets/custom_app_bar.dart';
import 'package:challenge1/widgets/custom_bottom_bar.dart';
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

    double _currentPage = 0.0;
    double indexPage =0.0;

    void _listener(){
      setState(() {
        _currentPage = _pageController.page!;
        if(_currentPage >= 0 && _currentPage < 0.7){
          indexPage = 0;
        }else if(_currentPage > 0.7 && _currentPage < 1.7 ){
          indexPage = 1;
        } else if (_currentPage > 1.7 && _currentPage < 2.7){
          indexPage = 2;
        }
      });
    }

    Color getColor(){
        late final Color color;
        if(_currentPage >= 0 && _currentPage < 0.7){
          color = listPokes[0].listImage[0].color;
        }else if(_currentPage > 0.7 && _currentPage < 1.7 ){
          color = listPokes[1].listImage[0].color;
        } else if (_currentPage > 1.7 && _currentPage < 2.7){
          color = listPokes[2].listImage[0].color;
        }

        return color;
    }


    @override
  void initState() {
    _pageController.addListener(_listener);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  listCategory.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only( left: 20.0, right: 20.0),
                    child: Text(
                          listCategory[index],
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 20,
                              color: index == indexPage ? getColor() : Colors.black ),
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
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(pageBuilder: (context,animation,_){
                      return Details(pokes: pokes);
                    }));
                  },
                  child: Padding(
                    padding:  EdgeInsets.only(right: index == indexPage ? 30 : 60.0),
                    child: Transform.translate( 
                      offset: Offset( index == indexPage ? 0 : 20, 0) ,
                      child: LayoutBuilder( //para poder aplicalr los constraints
                        builder: (context, constraints) {
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 250),
                            margin:  EdgeInsets.only(
                              top:  index == indexPage ? 30 : 50,
                               bottom: 30
                               ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              color: Colors.black,
                            ),
                            child: Stack(
                              clipBehavior: Clip.none , //que pueda desbordar el container
                              children: [
                                Padding(
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
                                Positioned(
                                  top: constraints.maxHeight * 0.2,
                                  left: constraints.maxWidth * 0.1,
                                  right: - constraints.maxWidth * 0.16,
                                  bottom: constraints.maxHeight * 0.1 ,
                                  child: Hero(
                                    tag: pokes.name,
                                    child: Image(
                                      image: AssetImage(
                                        pokes.listImage[0].image
                                        ),                           
                                    ),
                                  )
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Material(
                                    color: pokes.listImage[0].color,
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(36),
                                      bottomRight: Radius.circular(36),
                                    ),
                                    clipBehavior: Clip.antiAliasWithSaveLayer ,
                                    child: InkWell( //hacer el wisget interactivo al touch como un boton
                                      onTap: (){},
                                      child: const SizedBox(
                                        height: 100,
                                        width: 100,
                                        child: Icon(
                                          Icons.add,
                                          size: 40,
                                          
                                          ),
                                      ),
                                    ),
                                  )
                                )
                              ],
                            ),
                          );
                        }
                      ),
                    ),
                  ),
                );
              })
              ),
              Container(
                height: 70,
                padding: EdgeInsets.all(5),
                child: CustomBottomBar(color: getColor(),),
              )
        ],
      ),
    );
  }
}
