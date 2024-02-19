import 'package:challenge1/models/shoes.dart';
import 'package:challenge1/widgets/custom_button.dart';
import 'package:challenge1/widgets/transition.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({Key? key, required this.pokes}): super(key: key);

  final Pokes pokes;
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  int valueIndexEvo= 0;

  


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top:  -size.height * 0.15,
            right: -size.height * 0.20,
            child: TweenAnimationBuilder<double>(
              duration: const Duration(milliseconds: 250),
              tween: Tween(begin: 0, end: 1 ),
              builder: (context, value,__) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds:400),
                  height: value * (size.height * 0.5),
                  width: value * (size.height * 0.5),
                  decoration: BoxDecoration(
                    color: widget.pokes.listImage[valueIndexEvo].color,
                    shape: BoxShape.circle,
                  ),
                );
              }
            ),
          ),
          Positioned(
            top: kToolbarHeight,
            left: 16,
            right: 16 ,
            child: Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onTap: ()=> Navigator.pop(context) ,
                  child: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  )
                  ),
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.favorite),
                  )
              ],
              )
          ),
          Positioned(
            top: size.height *0.16,
            right: 0,
            left: 0,
            child: FittedBox(
              child: Text(
                widget.pokes.listImage[valueIndexEvo].namepoke,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87
                ),
                ),
            )
          ),
          Positioned(
            top: size.height *0.21,
            right: size.height *0.03,
            left: size.height *0.03,
            child: Hero(
              tag: widget.pokes.name,
              child: Image(
                image:AssetImage(
                  widget.pokes.listImage[valueIndexEvo].image
                ),  
              ),
            )
          ),
          Positioned(
            top: size.height *0.6,
            right: 16,
            left: 16,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ShakeTransition(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        children: [
                        Text(
                          widget.pokes.generation,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                      
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                           widget.pokes.name,
                           style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20
                           ),
                        )
                      ],),
                    ),
                        ShakeTransition(
                          left: false,
                          child: Text(
                             widget.pokes.hability,
                             style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20
                             ),
                          ),
                        )
                  ],
                ),
                ShakeTransition(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: 
                          List.generate(
                            5, (index) => Icon(
                              Icons.star,
                              color: widget.pokes.punctuation > index 
                              ? widget.pokes.listImage[valueIndexEvo].color
                              : Colors.white, ))
                      ),
                      const SizedBox(height:30.0),
                      const Center(
                        child: Text(
                          'Evolutions',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30,                
                        ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          widget.pokes.listImage.length, 
                          (index) => Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CustomButton(
                              onTap: (){
                                valueIndexEvo = index;
                                setState(() {
                                  
                                });
                              },
                              color: index== valueIndexEvo ?
                              widget.pokes.listImage[valueIndexEvo].color
                              : Colors.black,
                              width: 60,
                              child: Text(
                                '${index + 1}', 
                                style:  TextStyle(
                                  fontWeight:  FontWeight.w600,
                                  fontSize: 22,
                                  color: index == valueIndexEvo ?
                                  Colors.black :
                                  Colors.white,
                                ),
                              )
                              ),
                          )
                            ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ),
        ],
      )
      );
  }
}